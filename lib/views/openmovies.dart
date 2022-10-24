import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/widgets/aboutmovie.dart';
import 'package:movies/views/widgets/cast.dart';
import 'package:provider/provider.dart';

import '../ui.dart';

class OpenMovies extends StatefulWidget {
  const OpenMovies({Key? key}) : super(key: key);

  @override
  State<OpenMovies> createState() => _OpenMoviesState();
}

class _OpenMoviesState extends State<OpenMovies> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic>? moviedetails =
        context.read<AppViewModel>().state.currentmovie;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextUsed(moviedetails!["release_date"]),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.amber[800],
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextUsed(
                                moviedetails["vote_average"].toString()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      moviedetails["original_title"],
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    /*  ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: moviedetailsfull!["genres"].length,
                        itemBuilder: (BuildContext context, int index) {
                          return Expanded(
                            child: ListTile(
                              leading: Text(moviedetailsfull["genres"][index]
                                      ["id"]
                                  .toString()),
                            ),
                          );
                        }),*/
                  ],
                ),
              ),
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://image.tmdb.org/t/p/w500" +
                        moviedetails["backdrop_path"].toString()),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: BigText(
                "Synopsis",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextUsed(moviedetails["overview"]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cast",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Cast(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            About()
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      floatingActionButton: MaterialButton(
        onPressed: () {},
        child: Container(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(8)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextUsed("Book Ticket"),
              )),
        ),
      ),
    );
  }
}
