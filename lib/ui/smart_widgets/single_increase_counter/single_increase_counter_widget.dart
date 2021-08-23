import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/smart_widgets/single_increase_counter/single_increase_counter_model.dart';
import 'package:stacked/stacked.dart';

class SingleIncreaseCounter extends StatelessWidget {
  const SingleIncreaseCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SingleIncreaseCounterModel>.reactive(
        builder: (context, model, child) {
          return GestureDetector(
            onTap: model.updateCounter,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.grey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text(model.counter.toString())],
              ),
            ),
          );
        },
        viewModelBuilder: () => SingleIncreaseCounterModel());
  }
}
