import 'package:flutter_stacked/app/locator/locator.dart';
import 'package:flutter_stacked/app/router/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToStartUp() async {
    return await _navigationService.navigateTo(Routes.startUpView);
  }
}
