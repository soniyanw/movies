import 'package:flutter/material.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/ui.dart';
import 'package:movies/views/widgets/moviecredits_cast.dart';
import 'package:movies/views/widgets/tvcredits_cast.dart';

class CastDetails extends StatefulWidget {
  const CastDetails({Key? key}) : super(key: key);

  @override
  State<CastDetails> createState() => _CastDetailsState();
}

class _CastDetailsState extends State<CastDetails>
    with TickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = new TabController(length: 2, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Castcredits? castdetails = context.appViewModel.state.castcredits;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(castdetails!.name ?? ''),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                    height: 200,
                    width: 150,
                    child: Image(
                      image: NetworkImage(
                        "https://image.tmdb.org/t/p/w500" +
                            castdetails.profile_path.toString(),
                      ),
                      fit: BoxFit.cover,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextUsed("Birthday:"),
                                TextUsed("Deathday:"),
                                TextUsed("Gender:"),
                                TextUsed("Imdb Id"),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextUsed(
                                    (castdetails.birthday ?? "Not available")
                                        .toString()),
                                TextUsed(castdetails.deathday ?? '-'),
                                TextUsed(castdetails.gender == 2
                                    ? "Male"
                                    : "Female"),
                                TextUsed(castdetails.imdb_id.toString()),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextUsed("Place of Birth:"),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                        width: 200,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Center(
                              child: TextUsed(castdetails.place_of_birth ??
                                  'Not available')),
                        )),
                  ],
                ),
              ],
            ),
            TabBar(
              unselectedLabelColor: Colors.white,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  text: "Movies",
                ),
                Tab(text: "TV"),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  MovieCreditsCast(),
                  TVCreditsCast(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
