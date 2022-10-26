import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/widgets/aboutmovie.dart';
import 'package:movies/views/widgets/bookbutton.dart';
import 'package:movies/views/widgets/castgrid.dart';
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
    MovieDetails? moviedetails =
        context.read<AppViewModel>().state.currentmovie_tv;
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
                            child: TextUsed(moviedetails!.release_date != ""
                                ? moviedetails.release_date ?? 'Not available'
                                : "Not available"),
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
                            child:
                                TextUsed(moviedetails.vote_average.toString()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      moviedetails.title ?? 'Not available',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://image.tmdb.org/t/p/w500" +
                        moviedetails.backdrop_path.toString()),
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
              child: TextUsed(moviedetails.overview ?? 'Not Available'),
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
            CastPage(),
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
      floatingActionButton: BookButton(),
    );
  }
}
