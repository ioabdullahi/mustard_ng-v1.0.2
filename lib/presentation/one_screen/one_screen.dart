import 'controller/one_controller.dart';
import 'package:flutter/material.dart';
import 'package:mustard_ng/core/app_export.dart';
import 'package:mustard_ng/widgets/custom_button.dart';
import 'package:mustard_ng/widgets/custom_icon_button.dart';
import 'package:mustard_ng/presentation/sign_up_bottomsheet/sign_up_bottomsheet.dart';
import 'package:mustard_ng/presentation/sign_up_bottomsheet/controller/sign_up_controller.dart';

class OneScreen extends GetWidget<OneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                //height: getVerticalSize(836.00),
                //width: getHorizontalSize(367.00),
                margin: getMargin(left: 24, right: 36, bottom: 10),
                child: Stack(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    height: getVerticalSize(674.00),
                                    width: getHorizontalSize(367.00),
                                    child: Stack(
                                        alignment: Alignment.bottomLeft,
                                        children: [
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  height:
                                                      getVerticalSize(621.00),
                                                  width:
                                                      getHorizontalSize(367.00),
                                                  margin: getMargin(bottom: 10),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .bottomLeft,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 41,
                                                                        bottom:
                                                                            41),
                                                                child: CommonImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgEllipse9,
                                                                    height: getVerticalSize(
                                                                        220.43),
                                                                    width: getHorizontalSize(
                                                                        316.57)))),
                                                        Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            1),
                                                                child: CommonImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgInvestinginbi,
                                                                    height: getVerticalSize(
                                                                        621.00),
                                                                    width: getHorizontalSize(
                                                                        336.00))))
                                                      ]))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                  width:
                                                      getHorizontalSize(299.00),
                                                  margin: getMargin(
                                                      left: 25,
                                                      top: 32,
                                                      right: 25,
                                                      bottom: 32),
                                                  child: Text(
                                                      "msg_save_in_dollars".tr,
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtLatoBold32
                                                          .copyWith(
                                                              height: 1.13)))),
                                          Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 25,
                                                      top: 10,
                                                      right: 25),
                                                  child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00),
                                                            decoration: BoxDecoration(
                                                                color:
                                                                    ColorConstant
                                                                        .green600,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(2.00)))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00),
                                                            margin: getMargin(
                                                                left: 5),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(2.00)))),
                                                        Container(
                                                            height:
                                                                getVerticalSize(
                                                                    5.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00),
                                                            margin: getMargin(
                                                                left: 5),
                                                            decoration: BoxDecoration(
                                                                color: ColorConstant
                                                                    .bluegray100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            getHorizontalSize(2.00))))
                                                      ]))),
                                          CustomIconButton(
                                              height: 40,
                                              width: 40,
                                              margin: getMargin(
                                                  left: 10, top: 10, right: 6),
                                              variant: IconButtonVariant
                                                  .OutlineBlack90019,
                                              shape: IconButtonShape
                                                  .CircleBorder20,
                                              alignment: Alignment.bottomRight,
                                              onTap: () {
                                                onTapBtntf();
                                              },
                                              child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgNext))
                                        ]))),
                            Align(
                                alignment: Alignment.center,
                                child: Padding(
                                    padding:
                                        getPadding(left: 13, top: 30, right: 1),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomButton(
                                              width: 158,
                                              text: "lbl_login".tr,
                                              padding:
                                                  ButtonPadding.PaddingAll28,
                                              fontStyle:
                                                  ButtonFontStyle.LatoRegular16,
                                              onTap: onTapBtnLogin),
                                          CustomButton(
                                              width: 158,
                                              text: "lbl_register".tr,
                                              variant:
                                                  ButtonVariant.OutlineGreen600,
                                              padding:
                                                  ButtonPadding.PaddingAll28,
                                              fontStyle: ButtonFontStyle
                                                  .LatoRegular16Green600,
                                              onTap: onTapBtnRegister)
                                        ])))
                          ])))
                ]))));
  }

  onTapBtntf() {
    Get.toNamed(AppRoutes.twoScreen);
  }

  onTapBtnLogin() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  onTapBtnRegister() {
    Get.bottomSheet(
      SignUpBottomsheet(
        Get.put(
          SignUpController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
