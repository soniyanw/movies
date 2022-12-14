import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/openmovies.dart';
import 'package:provider/provider.dart';

class UpcomingMovies extends StatefulWidget {
  const UpcomingMovies({Key? key}) : super(key: key);

  @override
  State<UpcomingMovies> createState() => _UpcomingMoviesState();
}

class _UpcomingMoviesState extends State<UpcomingMovies> {
  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDetails>? upcommovies = context.appViewModel.state.upcoming;
    return (upcommovies == null || upcommovies.length == 0)
        ? Center(child: BigText("No Movies"))
        : GridView.count(
            shrinkWrap: true, // use it

            crossAxisCount: 3,
            childAspectRatio: (1 / 1.8),
            children: List.generate(upcommovies.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkResponse(
                  onTap: () async {
                    await context
                        .read<AppViewModel>()
                        .getcurrentmovie(index, upcommovies);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const OpenMovies()),
                    );
                  },
                  child: GridTile(
                    key: ValueKey(300 + index),
                    child: Column(
                      children: [
                        Expanded(
                          child: CachedNetworkImage(
                            placeholder: (context, url) => Center(
                                child: const CircularProgressIndicator()),
                            imageUrl: "https://image.tmdb.org/t/p/w500" +
                                upcommovies[index].poster_path.toString(),
                          ),
                        ),
                        Text(
                          upcommovies[index].title ?? '',
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
