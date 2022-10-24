import 'package:flutter/material.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/seats.dart';
import 'package:movies/views/widgets/app_texts.dart';
import 'package:provider/provider.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List<int> list = <int>[1, 2, 3, 4, 5];
  int dropdownValue = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          AppBar(
            backgroundColor: Colors.grey[800],
            title: Text("Select Numbet of Seats"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<int>(
                  value: dropdownValue,
                  icon: const Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white70,
                  ),
                  elevation: 16,
                  style: const TextStyle(color: Colors.grey),
                  underline: Container(
                    height: 2,
                    color: Colors.white70,
                  ),
                  onChanged: (int? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<int>>((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(
                        value.toString(),
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  }).toList(),
                ),
              )
            ],
          ),
          Center(
            child: Container(
              height: 200,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      TextUsed("Balcony\nRs.180.0\nAvailable"),
                      SizedBox(
                        width: 16,
                      ),
                      TextUsed("First Class\nRs.150.0\nAvailable"),
                    ]),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<AppViewModel>()
                                .getseats(dropdownValue);
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Seats()),
                            );
                          },
                          child: Text("Select Seat")),
                    ),
                  ]),
            ),
          )
        ],
      ),
    );
  }
}
