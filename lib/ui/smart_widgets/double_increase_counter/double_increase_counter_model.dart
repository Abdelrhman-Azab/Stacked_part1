import 'package:flutter_stacked/app/locator/locator.dart';
import 'package:flutter_stacked/app/services/counter_service.dart';
import 'package:stacked/stacked.dart';

class DoubleIncreaseCounterModel extends ReactiveViewModel {
  final _counterService = locator<CounterService>();
  int get counter => _counterService.counter;

  void updateCounter() {
    _counterService.doubleIncreaseCounter();
    notifyListeners();
  }

  @override
  // TODO: implement reactiveServices
  List<ReactiveServiceMixin> get reactiveServices => [_counterService];
}
