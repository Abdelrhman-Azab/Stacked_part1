import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/view/home/home_view_model.dart';
import 'package:flutter_stacked/ui/view/startup/startup_view_model.dart';
import 'package:stacked/stacked.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            model.navigateToHome();
          },
        ),
        body: Center(
          child: Text("Start Up"),
        ),
      ),
      viewModelBuilder: () => StartUpViewModel(),
    );
  }
}
