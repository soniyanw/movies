import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/model/currenttv_details.dart';
import 'package:movies/ui.dart';
import 'package:movies/views/widgets/about_tv.dart';
import 'package:movies/views/widgets/castgrid.dart';

import '../ui.dart';

class OpenTVs extends StatefulWidget {
  const OpenTVs({Key? key}) : super(key: key);

  @override
  State<OpenTVs> createState() => _OpenTVsState();
}

class _OpenTVsState extends State<OpenTVs> {
  @override
  Widget build(BuildContext context) {
    CurrenttvDetails? tvdetails = context.appViewModel.state.currenttvdetails;
    return Scaffold(
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
                            child: TextUsed(tvdetails!.first_air_date != ""
                                ? tvdetails.first_air_date ?? 'Not available'
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
                            child: TextUsed(tvdetails.vote_average.toString()),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        tvdetails.original_name ?? 'Not available',
                        style: TextStyle(
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: CachedNetworkImageProvider(
                        "https://image.tmdb.org/t/p/w500" +
                            tvdetails.backdrop_path.toString()),
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
              child: TextUsed(tvdetails.overview ?? 'Not Available'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Cast",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            CastPage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            AboutTV()
          ],
        ),
      ),
    );
  }
}
