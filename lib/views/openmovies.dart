import 'package:flutter/material.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

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
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://image.tmdb.org/t/p/w500" +
                        moviedetails!["backdrop_path"].toString()),
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
                "About",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [TextUsed(moviedetails["title"])],
              ),
            )
          ],
        ),
      ),
    );
  }
}
