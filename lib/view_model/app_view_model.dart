import 'package:built_collection/built_collection.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movies/data/notification_service_impl.dart';
import 'package:movies/model/getmovies.dart';
import 'package:state_notifier/state_notifier.dart';

import '../core/view_model/view_model.dart';
import '../provider/app_state_notifier.dart';
import '../ui.dart';

class AppProvider extends StatelessWidget {
  const AppProvider({Key? key, this.child}) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<AppViewModel, Getmovies>(
      create: (_) => AppViewModel(),
      child: child,
    );
  }
}

class AppViewModel extends AppStateNotifier<Getmovies>
    with LocatorMixin
    implements AppBaseViewModel {
  AppViewModel() : super(Getmovies());

  @override
  Future<void> init() async {}

  Future<void> getpopular() async {
    NotificationServiceImpl imp = NotificationServiceImpl();
    BuiltList<Map<String, dynamic>>? a = await imp.getmoviespop();
    state = state.rebuild((p0) {
      p0.popular = a.toBuilder();
    });
  }

  Future<void> gettop() async {
    NotificationServiceImpl imp = NotificationServiceImpl();
    BuiltList<Map<String, dynamic>>? a = await imp.getmoviestop();
    state = state.rebuild((p0) {
      p0.toprated = a.toBuilder();
    });
  }

  Future<void> getpupcom() async {
    NotificationServiceImpl imp = NotificationServiceImpl();
    BuiltList<Map<String, dynamic>>? a = await imp.getmoviesupcom();
    state = state.rebuild((p0) {
      p0.upcoming = a.toBuilder();
    });
  }

  Future<void> getcurrentmovie(int index, BuiltList? movielist) async {
    NotificationServiceImpl imp = NotificationServiceImpl();
    Map<String, dynamic> a =
        await imp.getmoviedetails((movielist![index]["id"]).toString());
    BuiltList<Map<String, dynamic>>? b =
        await imp.getcastdetails((movielist[index]["id"]).toString());
    state = state.rebuild((p0) {
      p0.currentmovie = (movielist[index]) as Map<String, dynamic>;
      p0.movieid = (movielist[index]["id"]).toString();
      p0.currentmoviedetails = a;
      p0.castlist = b.toBuilder();
    });
  }

  void getseats(int seats) {
    state = state.rebuild((p0) {
      p0.seats = seats;
    });
  }
}
