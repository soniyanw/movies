import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/openmovies.dart';
import 'package:provider/provider.dart';

class MovieCreditsCast extends StatefulWidget {
  const MovieCreditsCast({Key? key}) : super(key: key);

  @override
  State<MovieCreditsCast> createState() => _MovieCreditsCastState();
}

class _MovieCreditsCastState extends State<MovieCreditsCast> {
  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDetails>? moviecredits =
        context.read<AppViewModel>().state.currentcast_movies;
    return (moviecredits == null || moviecredits.length == 0)
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          )
        : GridView.count(
            shrinkWrap: true, // use it

            crossAxisCount: 3,
            childAspectRatio: (1 / 1.8),
            children: List.generate(moviecredits.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkResponse(
                  onTap: () async {
                    await context
                        .read<AppViewModel>()
                        .getcurrentmovie(index, moviecredits);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpenMovies()),
                    );
                  },
                  child: GridTile(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Expanded(
                          child: Image(
                            image: NetworkImage(
                              "https://image.tmdb.org/t/p/w500" +
                                  moviecredits[index].poster_path.toString(),
                            ),
                          ),
                        ),
                        Text(
                          moviecredits[index].title ?? '',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          );
  }
}
