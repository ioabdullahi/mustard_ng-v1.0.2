import 'controller/update_email_address_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';import 'package:mustard_ng/widgets/custom_text_form_field.dart';class UpdateEmailAddressScreen extends GetWidget<UpdateEmailAddressController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(margin: getMargin(top: 21, bottom: 88), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, child: Container(height: getVerticalSize(27.00), width: getHorizontalSize(428.00), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 24, right: 24), child: Row(crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(top: 7), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getVerticalSize(20.00), width: getHorizontalSize(18.00)))), Padding(padding: getPadding(left: 89, bottom: 7), child: Text("msg_change_email_ad".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold20.copyWith(height: 1.00)))]))), Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), margin: getMargin(top: 10, bottom: 6), decoration: BoxDecoration(color: ColorConstant.gray50))])))), Container(width: double.infinity, margin: getMargin(left: 24, top: 52, right: 24), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("msg_new_email_addre".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.group162Controller, hintText: "msg_n_mat_gmai".tr, margin: getMargin(top: 3), textInputAction: TextInputAction.done), CustomButton(width: 380, text: "lbl_confirm_otp".tr, margin: getMargin(top: 577), onTap: onTapBtnConfirmotp)]))])))))); } 
onTapImgArrowleft() { Get.back(); } 
onTapBtnConfirmotp() { Get.toNamed(AppRoutes.emailVerificationScreen); } 
 }