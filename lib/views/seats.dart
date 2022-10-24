import 'package:flutter/material.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/widgets/app_texts.dart';
import 'package:provider/provider.dart';

class Seats extends StatefulWidget {
  const Seats({Key? key}) : super(key: key);

  @override
  State<Seats> createState() => _SeatsState();
}

class _SeatsState extends State<Seats> {
  List<String> seatnames = [
    'A1',
    'A2',
    'A3',
    'A4',
    'A5',
    'A6',
    'B1',
    'B2',
    'B3',
    'B4',
    'B5',
    'B6',
    'C1',
    'C2',
    'C3',
    'C4',
    'C5',
    'C6',
    'D1',
    'D2',
    'D3',
    'D4',
    'D5',
    'D6',
    'E1',
    'E2',
    'E3',
    'E4',
    'E5',
    'E6',
    'F1',
    'F2',
    'F3',
    'F4',
    'F5',
    'F6'
  ];
  List<int> selected = [];
  int count = 0;
  int total = 0;

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? moviedetails =
        context.read<AppViewModel>().state.currentmovie;
    int? seats = context.read<AppViewModel>().state.seats;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(moviedetails!["title"]),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Center(
                child: Text(
              "Screen",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            )),
          ),
          GridView.count(
              shrinkWrap: true, // use it
              crossAxisCount: 6,
              children: List.generate(seatnames.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkResponse(
                    onTap: () {
                      if (selected.contains(index)) {
                        selected.remove(index);
                        count--;
                        if (index < 30) {
                          total -= 150;
                        } else {
                          total -= 180;
                        }
                      } else {
                        if (count <= seats! - 1) {
                          selected.add(index);
                          count++;
                          if (index < 30) {
                            total += 150;
                          } else {
                            total += 180;
                          }
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("Seat Selection allowed only for " +
                                  seats.toString() +
                                  " seats")));
                        }
                      }
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: selected.contains(index)
                            ? Colors.green
                            : Colors.transparent,
                        border: Border.all(color: Colors.green),
                      ),
                      child: Center(child: TextUsed(seatnames[index])),
                    ),
                  ),
                );
              })),
          TextUsed("A1-E6 : First Class    F1-F6 : Balcony"),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Text(
                          seats.toString() + " tickets booked successfully")));
                },
                child: Text("Book"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Total Cost= Rs." + total.toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
