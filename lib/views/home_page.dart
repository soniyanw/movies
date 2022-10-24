import 'package:built_collection/built_collection.dart';
import 'package:flutter/material.dart';
import 'package:movies/view_model/app_view_model.dart';

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
    BuiltList? popmovies = context.read<AppViewModel>().state.popular;
    BuiltList? upcommovies = context.read<AppViewModel>().state.upcoming;
    BuiltList? topmovies = context.read<AppViewModel>().state.toprated;

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
            (popmovies == null || popmovies.length == 0)
                ? Container(color: Colors.pink)
                : GridView.count(
                    shrinkWrap: true, // use it

                    crossAxisCount: 3,
                    childAspectRatio: (1 / 1.8),
                    children: List.generate(popmovies.length, (index) {
                      return GridTile(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Expanded(
                              child: Image(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500" +
                                      popmovies[index]["poster_path"]
                                          .toString(),
                                ),
                              ),
                            ),
                            Text(
                              popmovies[index]["title"],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
            (upcommovies == null || upcommovies.length == 0)
                ? Container(color: Colors.pink)
                : GridView.count(
                    shrinkWrap: true, // use it

                    crossAxisCount: 3,
                    childAspectRatio: (1 / 1.8),
                    children: List.generate(upcommovies.length, (index) {
                      return GridTile(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500" +
                                      upcommovies[index]["poster_path"]
                                          .toString(),
                                ),
                              ),
                            ),
                            Text(
                              upcommovies[index]["title"],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
            (topmovies == null || topmovies.length == 0)
                ? Container(color: Colors.pink)
                : GridView.count(
                    shrinkWrap: true, // use it

                    crossAxisCount: 3,
                    childAspectRatio: (1 / 1.8),
                    children: List.generate(topmovies.length, (index) {
                      return GridTile(
                        child: Column(
                          children: [
                            Expanded(
                              child: Image(
                                image: NetworkImage(
                                  "https://image.tmdb.org/t/p/w500" +
                                      topmovies[index]["poster_path"]
                                          .toString(),
                                ),
                              ),
                            ),
                            Text(
                              topmovies[index]["title"],
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
                  ),
          ],
        ),
      ),
    );
  }
}
