import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../app/app.locator.dart';

class NavService extends BaseViewModel {
  static final NavigationService _navigationService =
      locator<NavigationService>();

  static final SnackbarService _snackBarService = locator<SnackbarService>();

  static Future<dynamic>? showSnackBar(
    String title,
    String message,
    Duration duration,
  ) {
    _snackBarService.showSnackbar(
      title: title,
      message: message,
      duration: duration,
    );
    return null;
  }

  static Future<dynamic>? navigateTo(String route, {dynamic arguments}) =>
      _navigationService.navigateTo(route, arguments: arguments);

  static Future<dynamic>? navigateAndClearStack(
    String route, {
    dynamic arguments,
  }) => _navigationService.clearStackAndShow(route, arguments: arguments);

  static Future<void> closeBottomSheetAndGoBack({dynamic arguments}) async {
    // Assuming your bottom sheet is the topmost route when this is called
    await _navigationService.back(
      result: arguments,
    ); // Now go back from Screen C to Screen B
  }

  // New method for pushing named routes
  static Future<dynamic>? pushNamed(String routeName, {dynamic arguments}) {
    return _navigationService.navigateTo(routeName, arguments: arguments);
  }

  static goBack() => _navigationService.back();
}
