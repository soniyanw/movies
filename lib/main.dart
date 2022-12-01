import 'package:movies/view_model/theme_model.dart';
import 'package:movies/views/home_page.dart';

import 'ui.dart';
import 'view_model/app_view_model.dart';

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
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(builder: (context, ThemeModel themeNotifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: themeNotifier.isDark
              ? ThemeData(
                  primarySwatch: Colors.grey,
                  primaryColor: Colors.black,
                  buttonColor: Colors.grey,
                  brightness: Brightness.dark,
                  dividerColor: Colors.black12,
                  accentColor: Colors.white)
              : ThemeData(
                  primarySwatch: Colors.grey,
                  primaryColor: Colors.white,
                  buttonColor: Colors.grey,
                  brightness: Brightness.light,
                  backgroundColor: const Color(0xFFE5E5E5),
                  dividerColor: Colors.white54,
                  accentColor: Colors.black),
          home: const HomePage(),
        );
      }),
    );
    /*return MaterialApp.router(
      theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: Colors.white,
          buttonColor: Colors.grey,
          brightness: Brightness.light,
          backgroundColor: const Color(0xFFE5E5E5),
          dividerColor: Colors.white54,
          accentColor: Colors.black),
      //context.appViewModel.theme,
      title: 'Movies',
      routeInformationParser: AppRouteParserImpl(),
      routerDelegate: appRouterDelegate,
      backButtonDispatcher: AppBackButtonDispatcher(appRouterDelegate),
      locale: AppStringsDelegate.english,
      supportedLocales: AppStringsDelegate.appSupportedLocales,
      localizationsDelegates: AppStringsDelegate.delegates,
    );*/
  }
}
