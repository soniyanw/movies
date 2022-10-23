import '../ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AppProviderMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(context.strings.apr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const AppText(
              'You have pushed the button this many times:',
            ),
            AppHeadLine1(
              '${appState.count}',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: keys.homePageKeys.increment,
        onPressed: () {
          context.appViewModel.increment();
        },
        tooltip: 'Increment',
        child: const AppIcon(Icons.add),
      ),
    );
  }
}
