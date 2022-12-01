import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/openmovies.dart';
import 'package:provider/provider.dart';

class PopularMovies extends StatefulWidget {
  const PopularMovies({Key? key}) : super(key: key);

  @override
  State<PopularMovies> createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDetails>? popmovies = context.appViewModel.state.popular;

    return (popmovies == null || popmovies.length == 0)
        ? Center(child: BigText("No Movies"))
        : GridView.count(
            shrinkWrap: true, // use it

            crossAxisCount: 3,
            childAspectRatio: (1 / 1.8),
            children: List.generate(popmovies.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkResponse(
                  onTap: () async {
                    await context
                        .read<AppViewModel>()
                        .getcurrentmovie(index, popmovies);
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
                                  popmovies[index].poster_path.toString(),
                            ),
                          ),
                        ),
                        Text(
                          popmovies[index].title ?? '',
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
