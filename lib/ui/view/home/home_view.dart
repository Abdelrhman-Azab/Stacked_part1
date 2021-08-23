import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/view/home/home_view_model.dart';

import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.navigateToStartUp();
          },
        ),
        body: Center(
          child: Text("Home screen"),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
