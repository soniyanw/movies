import 'package:flutter/material.dart';
import 'package:movies/view_model/app_view_model.dart';
import 'package:movies/views/popularmovies.dart';
import 'package:movies/views/topRatedMovies.dart';
import 'package:movies/views/upomingMovies.dart';

import '../ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  Future<void> method() async {
    await context.read<AppViewModel>().getpupcom();
    await context.read<AppViewModel>().getpopular();
    await context.read<AppViewModel>().gettop();
  }

  void initState() {
    method();

    // TODO: implement initState
    super.initState();
  }

  @override
  final upperTab = const TabBar(
    labelColor: Colors.white,
    tabs: <Tab>[
      Tab(
        text: "Popular",
      ),
      Tab(text: "Top Rated"),
      Tab(text: "Upcoming"),
    ],
    indicatorColor: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Book Movie"),
          backgroundColor: Colors.black,
          bottom: upperTab,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Icon(Icons.search_rounded),
            )
          ],
          elevation: 20,
        ),
        body: TabBarView(
          children: [
            PopularMovies(),
            TopRatedMovies(),
            UpcomingMovies(),
          ],
        ),
      ),
    );
  }
}
