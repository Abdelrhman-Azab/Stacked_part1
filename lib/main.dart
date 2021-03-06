import 'package:flutter/material.dart';
import 'package:flutter_stacked/app/locator/locator.dart';
import 'package:flutter_stacked/app/router/router.gr.dart' as Router;
import 'package:flutter_stacked/ui/view/counter/counter_view.dart';
import 'package:flutter_stacked/ui/view/home/home_view.dart';
import 'package:flutter_stacked/ui/view/partial_builds/partial_builds_view.dart';
import 'package:flutter_stacked/ui/view/partial_builds/partial_builds_view_model.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // initialRoute: Router.Routes.startUpView,
      onGenerateRoute: Router.Router().onGenerateRoute,
      home: CounterView(),
      // ignore: deprecated_member_use
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
