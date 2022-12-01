import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/openmovies.dart';
import 'package:provider/provider.dart';

class TopRatedMovies extends StatefulWidget {
  const TopRatedMovies({Key? key}) : super(key: key);

  @override
  State<TopRatedMovies> createState() => _TopRatedMoviesState();
}

class _TopRatedMoviesState extends State<TopRatedMovies> {
  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDetails>? topmovies = context.appViewModel.state.toprated;

    return (topmovies == null || topmovies.length == 0)
        ? Center(child: BigText("No Movies"))
        : GridView.count(
            shrinkWrap: true, // use it

            crossAxisCount: 3,
            childAspectRatio: (1 / 1.8),
            children: List.generate(topmovies.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkResponse(
                  onTap: () async {
                    await context
                        .read<AppViewModel>()
                        .getcurrentmovie(index, topmovies);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpenMovies()),
                    );
                  },
                  child: GridTile(
                    key: ValueKey(200 + index),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: NetworkImage(
                              "https://image.tmdb.org/t/p/w500" +
                                  topmovies[index].poster_path.toString(),
                            ),
                          ),
                        ),
                        Text(
                          topmovies[index].title ?? '',
                          style: TextStyle(),
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
