import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => SplashBloc(SplashState(
        splashModelObj: SplashModel(),
      ))
        ..add(SplashInitialEvent()),
      child: SplashScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 40.v),
              child: Column(
                children: [
                  Spacer(
                    flex: 26,
                  ),
                  Text(
                    "lbl_pootracker".tr,
                    style: CustomTextStyles.headlineLargeOnPrimaryContainer,
                  ),
                  Spacer(
                    flex: 22,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgLogo,
                    height: 128.v,
                    width: 190.h,
                  ),
                  Spacer(
                    flex: 51,
                  ),
                  Text(
                    "lbl_version_1_0".tr,
                    style: CustomTextStyles.bodyLargeOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
