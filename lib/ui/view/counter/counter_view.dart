import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/smart_widgets/double_increase_counter/double_increase_counter_widget.dart';
import 'package:flutter_stacked/ui/smart_widgets/single_increase_counter/single_increase_counter_widget.dart';
import 'package:flutter_stacked/ui/view/counter/counter_view_model.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
        builder: (context, model, child) {
          return Scaffold(
            body: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SingleIncreaseCounter(),
                  SizedBox(
                    width: 100,
                  ),
                  DoubleIncreaseCounter()
                ],
              ),
            ),
          );
        },
        viewModelBuilder: () => CounterViewModel());
  }
}
