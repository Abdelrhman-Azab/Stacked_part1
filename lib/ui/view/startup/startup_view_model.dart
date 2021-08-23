import 'package:flutter_stacked/app/locator/locator.dart';
import 'package:flutter_stacked/app/router/router.gr.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class StartUpViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  Future navigateToHome() async {
    return await _navigationService.navigateTo(Routes.homeView);
  }
}
