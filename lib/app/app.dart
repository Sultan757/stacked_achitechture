import 'package:kistpay_consumer_app/ui/splash/splash_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(
  routes: [MaterialRoute(page: SplashView, initial: true)],
  dependencies: [
    // LazySingleton(classType: NavigationService),
    // LazySingleton(classType: ApiService),
    // LazySingleton(classType: SnackbarService),
    // LazySingleton(classType: ImageUploadService),
  ],
)
class AppSetup {}
