import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_stacked/ui/view/home/home_view.dart';
import 'package:flutter_stacked/ui/view/startup/startup_view.dart';

@MaterialAutoRouter(routes: [
  MaterialRoute(page: StartUpView, initial: true),
  MaterialRoute(page: HomeView)
])
class $Router {}
