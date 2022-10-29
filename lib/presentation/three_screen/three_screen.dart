import 'controller/three_controller.dart';
import 'package:flutter/material.dart';
import 'package:mustard_ng/core/app_export.dart';
import 'package:mustard_ng/widgets/custom_button.dart';
import 'package:mustard_ng/presentation/sign_up_bottomsheet/sign_up_bottomsheet.dart';
import 'package:mustard_ng/presentation/sign_up_bottomsheet/controller/sign_up_controller.dart';

class ThreeScreen extends GetWidget<ThreeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                height: size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, -3.0616171314629196e-17),
                        end: Alignment(0.5, 0.9999999999999999),
                        colors: [
                      ColorConstant.whiteA700,
                      ColorConstant.whiteA70066,
                      ColorConstant.whiteA700A1
                    ])),
                child: Container(
                    height: getVerticalSize(702.00),
                    width: getHorizontalSize(375.00),
                    margin:
                        getMargin(left: 27, top: 134, right: 26, bottom: 90),
                    child: Stack(children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SingleChildScrollView(
                              child: Container(
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: getVerticalSize(387.00),
                                        width: getHorizontalSize(375.00),
                                        child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 10,
                                                          top: 10,
                                                          right: 10,
                                                          bottom: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgEllipse9Green600,
                                                          height:
                                                              getVerticalSize(
                                                                  242.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  307.00)))),
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CommonImageView(
                                                      imagePath: ImageConstant
                                                          .imgManreceiveda,
                                                      height: getVerticalSize(
                                                          387.00),
                                                      width: getHorizontalSize(
                                                          375.00)))
                                            ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        width: getHorizontalSize(293.00),
                                        margin: getMargin(
                                            left: 22, top: 24, right: 22),
                                        child: Text("msg_send_money_to_f".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLatoBold32
                                                .copyWith(height: 1.13)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 22, top: 27, right: 22),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(5.00),
                                                  width:
                                                      getHorizontalSize(24.00),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray102,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2.00)))),
                                              Container(
                                                  height: getVerticalSize(5.00),
                                                  width:
                                                      getHorizontalSize(24.00),
                                                  margin: getMargin(left: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .bluegray100,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2.00)))),
                                              Container(
                                                  height: getVerticalSize(5.00),
                                                  width:
                                                      getHorizontalSize(24.00),
                                                  margin: getMargin(left: 5),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .green600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2.00))))
                                            ]))),
                                Padding(
                                    padding: getPadding(
                                        left: 10, top: 88, right: 10),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          CustomButton(
                                              width: 168,
                                              text: "lbl_login".tr,
                                              padding:
                                                  ButtonPadding.PaddingAll28,
                                              fontStyle: ButtonFontStyle
                                                  .LatoRegular16),
                                          CustomButton(
                                              width: 168,
                                              text: "lbl_register".tr,
                                              variant:
                                                  ButtonVariant.OutlineGreen600,
                                              padding:
                                                  ButtonPadding.PaddingAll28,
                                              fontStyle: ButtonFontStyle
                                                  .LatoRegular16Green600,
                                              onTap: onTapBtnRegister)
                                        ]))
                              ]))))
                    ])))));
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
