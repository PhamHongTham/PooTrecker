import 'bloc/share_bloc.dart';
import 'models/share_model.dart';
import 'package:flutter/material.dart';
import 'package:phm_th_hng_thm_s_application7/core/app_export.dart';
import 'package:phm_th_hng_thm_s_application7/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ShareDialog extends StatelessWidget {
  const ShareDialog({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ShareBloc>(
      create: (context) => ShareBloc(ShareState(
        shareModelObj: ShareModel(),
      ))
        ..add(ShareInitialEvent()),
      child: ShareDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 374.h,
      padding: EdgeInsets.symmetric(
        horizontal: 33.h,
        vertical: 38.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 11.v),
          Text(
            "msg_share_infomation".tr,
            style: CustomTextStyles.headlineSmallGray70001,
          ),
          SizedBox(height: 50.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 80.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillSecondaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroupOnprimarycontainer,
                  height: 24.v,
                  width: 31.h,
                ),
                Text(
                  "lbl_send_email".tr,
                  style: CustomTextStyles.titleLargeOnPrimaryContainer,
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 80.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillBlueA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook,
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Text(
                    "lbl_facebook".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 79.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder25,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPinterest,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: Text(
                    "lbl_print".tr,
                    style: CustomTextStyles.titleLargeOnPrimaryContainer,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50.v),
          CustomOutlinedButton(
            width: 160.h,
            text: "lbl_close".tr,
            buttonStyle: CustomButtonStyles.outlineGray,
            buttonTextStyle: CustomTextStyles.titleLargeGray500,
          ),
        ],
      ),
    );
  }
}
