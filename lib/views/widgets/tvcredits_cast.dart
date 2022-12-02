import 'package:built_collection/built_collection.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/movie_details.dart';
import 'package:movies/ui.dart';

class TVCreditsCast extends StatefulWidget {
  const TVCreditsCast({Key? key}) : super(key: key);

  @override
  State<TVCreditsCast> createState() => _TVCreditsCastState();
}

class _TVCreditsCastState extends State<TVCreditsCast> {
  @override
  Widget build(BuildContext context) {
    BuiltList<MovieDetails>? tvcredits = context.appViewModel.state.current_tvs;
    return (tvcredits == null || tvcredits.length == 0)
        ? Center(child: BigText("No Shows"))
        : GridView.count(
            shrinkWrap: true, // use it

            crossAxisCount: 3,
            childAspectRatio: (1 / 1.8),
            children: List.generate(tvcredits.length, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridTile(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          placeholder: (context, url) =>
                              Center(child: const CircularProgressIndicator()),
                          imageUrl: "https://image.tmdb.org/t/p/w500" +
                              tvcredits[index].poster_path.toString(),
                        ),
                      ),
                      Text(
                        tvcredits[index].name ?? '',
                      )
                    ],
                  ),
                ),
              );
            }),
          );
  }
}
