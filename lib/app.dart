import 'package:day16_shopping/Pages/home_page.dart';
import 'package:day16_shopping/Pages/not_found.dart';
import 'package:day16_shopping/Pages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Map<String, WidgetBuilder> _routes;

  @override
  void initState() {
    super.initState();

    _routes = {
      WelcomePage.routeName: (_) => WelcomePage(),
      HomePage.routeName: (_) => HomePage(),
    };
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Gotham'),
      title: 'Shop',
      onGenerateRoute: (settings) {
        if (settings.isInitialRoute) {
          return inPageRoute(WelcomePage(),
              RouteSettings(name: WelcomePage.routeName, isInitialRoute: true));
        }

        if (_routes.containsKey(settings.name)) {
          final builder = _routes[settings.name];
          return inPageRoute(
              builder(context), RouteSettings(name: settings.name));
        }

        return inPageRoute(NotFound());
      },

      // supportedLocales: [//TODO DEFINE SUPOORTED LANGSSSSS],
    );
  }
}

bool neverNotify(_, __) => false;

Provider<T> inProvider<T>(T value) =>
    Provider<T>.value(value: value, updateShouldNotify: neverNotify);

MaterialPageRoute inPageRoute(Widget child, [RouteSettings settings]) =>
    MaterialPageRoute(builder: (context) => child, settings: settings);
