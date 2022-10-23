import 'intl/i18n.dart';
import 'ui.dart';
import 'view_model/app_view_model.dart';
import 'views/navigation/app_router_delegate.dart';

void main() {
  runApp(
    const AppProvider(child: MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      routeInformationParser: AppRouteParserImpl(),
      routerDelegate: appRouterDelegate,
      backButtonDispatcher: AppBackButtonDispatcher(appRouterDelegate),
      locale: AppStringsDelegate.english,
      supportedLocales: AppStringsDelegate.appSupportedLocales,
      localizationsDelegates: AppStringsDelegate.delegates,
    );
  }
}
