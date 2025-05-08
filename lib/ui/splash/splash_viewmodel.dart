import 'package:stacked/stacked.dart';

class SplashViewModel extends BaseViewModel {
  Future<void> delayThreeSeconds() async {
    await Future.delayed(const Duration(seconds: 3));
    print('Navigating to HomeView...');

    //NavService.navigateAndClearStack(Routes.bottomNavigationView);
  }
}
