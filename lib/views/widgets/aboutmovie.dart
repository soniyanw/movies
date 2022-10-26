import 'package:flutter/material.dart';
import 'package:movies/model/currentmovie_details.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/widgets/app_texts.dart';
import 'package:provider/provider.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrentmovieDetails? moviedetailsfull =
        context.read<AppViewModel>().state.currentmoviedetails;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUsed("Orginal Title:"),
                TextUsed("Status:"),
                TextUsed("Runtime:"),
                TextUsed("Premiere:"),
                TextUsed("Budget:"),
                TextUsed("Revenue:"),
                TextUsed("Imdb:"),
                TextUsed("Vote Rating:")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUsed(moviedetailsfull!.original_title ?? 'Not available'),
                TextUsed(moviedetailsfull.status ?? 'Not available'),
                TextUsed(
                    (moviedetailsfull.runtime ?? "Not available").toString()),
                TextUsed((moviedetailsfull.release_date != "" &&
                            moviedetailsfull.release_date != null
                        ? moviedetailsfull.release_date
                        : "Not available")
                    .toString()),
                TextUsed(
                    (moviedetailsfull.budget ?? "Not available").toString()),
                TextUsed(
                    (moviedetailsfull.revenue ?? "Not available").toString()),
                TextUsed((moviedetailsfull.imdb_id ?? '-').toString()),
                TextUsed(moviedetailsfull.vote_average.toString())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
