import 'package:flutter/material.dart';
import 'package:kistpay_consumer_app/constant/app_colors.dart';
import 'package:kistpay_consumer_app/constant/app_images.dart';
import 'package:kistpay_consumer_app/ui/splash/splash_viewmodel.dart';
import 'package:kistpay_consumer_app/widgets/svg_icon_component.dart';
import 'package:stacked/stacked.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onViewModelReady: (model) {
        model.delayThreeSeconds();
      },
      builder: (context, splashViewModel, child) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    AppColors.colorSplashStart,
                    AppColors.colorSplashEnd,
                  ],
                ),
              ),
              child: const Center(
                child: SvgIconComponent(
                  icon: AppImagePaths.ic_logo_white,
                  // Adjust width and height as needed
                  width: 100.0,
                  height: 100.0,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
