import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/smart_widgets/double_increase_counter/double_increase_counter_model.dart';
import 'package:flutter_stacked/ui/smart_widgets/single_increase_counter/single_increase_counter_model.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounter extends StatelessWidget {
  const DoubleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DoubleIncreaseCounterModel>.reactive(
        builder: (context, model, child) {
          return GestureDetector(
            onTap: model.updateCounter,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text(model.counter.toString())],
              ),
            ),
          );
        },
        viewModelBuilder: () => DoubleIncreaseCounterModel());
  }
}
