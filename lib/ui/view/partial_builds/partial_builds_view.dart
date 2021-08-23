import 'package:flutter/material.dart';
import 'package:flutter_stacked/ui/view/partial_builds/partial_builds_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_hooks/stacked_hooks.dart';

class ParialBuildsView extends StatelessWidget {
  const ParialBuildsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<PartialBuildsViewModel>.nonReactive(
      builder: (context, model, child) {
        print("View Model  rebuilt");

        return Scaffold(
          body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _StringForm(),
                _TitleAndValue(),
              ]),
        );
      },
      viewModelBuilder: () => PartialBuildsViewModel(),
    );
  }
}

class _StringForm extends HookViewModelWidget<PartialBuildsViewModel> {
  _StringForm({Key? key}) : super(key: key, reactive: false);
  final text = TextEditingController();

  @override
  Widget buildViewModelWidget(
      BuildContext context, PartialBuildsViewModel viewModel) {
    print("String form rebuilt");
    return TextField(
      controller: text,
      onChanged: (value) {
        viewModel.updateString(value);
      },
    );
  }
}

class _TitleAndValue extends ViewModelWidget<PartialBuildsViewModel> {
  const _TitleAndValue({Key? key}) : super(key: key, reactive: true);

  @override
  Widget build(BuildContext context, PartialBuildsViewModel viewModel) {
    return Column(
      children: [
        Text(
          viewModel.title,
          style: TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
