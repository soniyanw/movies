import 'package:flutter/material.dart';
import 'package:movies/model/currenttv_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/views/widgets/app_texts.dart';

class AboutTV extends StatelessWidget {
  const AboutTV({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrenttvDetails? moviedetailsfull =
        context.appViewModel.state.currenttvdetails;
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
                TextUsed("Type:"),
                TextUsed("Seasons:"),
                TextUsed("Episodes:"),
                TextUsed("First Air:"),
                TextUsed("Last Air:"),
                TextUsed("Vote Rating:")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUsed(moviedetailsfull!.original_name ?? 'Not available'),
                TextUsed(moviedetailsfull.type ?? 'Not available'),
                TextUsed((moviedetailsfull.number_of_seasons ?? "Not available")
                    .toString()),
                TextUsed(
                    (moviedetailsfull.number_of_episodes ?? "Not available")
                        .toString()),
                TextUsed((moviedetailsfull.first_air_date ?? "Not available")
                    .toString()),
                TextUsed(
                    (moviedetailsfull.last_air_date ?? "Running").toString()),
                TextUsed(moviedetailsfull.vote_average.toString())
              ],
            ),
          ),
        ],
      ),
    );
  }
}
