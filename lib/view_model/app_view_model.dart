import 'package:built_collection/built_collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movies/core/services/api_service.dart';
import 'package:movies/data/api_service_imp.dart';
import 'package:movies/model/app_state.dart';
import 'package:movies/model/cast.dart';
import 'package:movies/model/castcredits.dart';
import 'package:movies/model/currentmovie_details.dart';
import 'package:movies/model/movie_details.dart';
import 'package:state_notifier/state_notifier.dart';

import '../core/view_model/view_model.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<AppState>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(AppState());
  APIService imp = APIServiceImp();

  @override
  Future<void> init() async {}

  Future<void> getpopular() async {
    BuiltList<MovieDetails>? a = await imp.getmoviespop();
    state = state.rebuild((p0) {
      p0.popular = a.toBuilder();
    });
  }

  Future<void> gettop() async {
    BuiltList<MovieDetails>? a = await imp.getmoviestop();
    state = state.rebuild((p0) {
      p0.toprated = a.toBuilder();
    });
  }

  Future<void> getpupcom() async {
    BuiltList<MovieDetails>? a = await imp.getmoviesupcom();
    state = state.rebuild((p0) {
      p0.upcoming = a.toBuilder();
    });
  }

  Future<void> getcurrentmovie(
      int index, BuiltList<MovieDetails>? movielist) async {
    CurrentmovieDetails a =
        await imp.getmoviedetails((movielist![index].id).toString());
    BuiltList<Cast>? b =
        await imp.getcastdetails((movielist[index].id).toString());
    state = state.rebuild((p0) {
      p0.currentmovie = (movielist[index]).toBuilder();
      p0.currentmoviedetails = a.toBuilder();
      p0.castlist = b.toBuilder();
    });
  }

  void getseats(int seats) {
    state = state.rebuild((p0) {
      p0.seats = seats;
    });
  }

  Future<void> getcastdetails_withcredits(int castid) async {
    Castcredits a = await imp.getcastdetails_and_credits((castid));
    BuiltList<MovieDetails>? b = await imp.getcast_movies(castid);
    BuiltList<MovieDetails>? e = await imp.getcast_tvs(castid);

    print(b);
    state = state.rebuild((p0) {
      p0.castcredits = (a).toBuilder();
      p0.currentcast_movies = b.toBuilder();
      p0.current_tvs = e.toBuilder();
    });
  }
}
