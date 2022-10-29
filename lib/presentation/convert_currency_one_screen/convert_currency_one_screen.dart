import 'controller/convert_currency_one_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';import 'package:mustard_ng/widgets/custom_drop_down.dart';import 'package:mustard_ng/widgets/custom_radio_button.dart';class ConvertCurrencyOneScreen extends GetWidget<ConvertCurrencyOneController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(margin: getMargin(top: 13, bottom: 88), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(left: 24, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(top: 2, bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getVerticalSize(17.00), width: getHorizontalSize(18.00)))), Padding(padding: getPadding(left: 103), child: Text("msg_convert_currenc".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold20.copyWith(height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(width: double.infinity, margin: getMargin(top: 7), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), decoration: BoxDecoration(color: ColorConstant.gray50)), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 89, top: 15, right: 89), child: Text("msg_convert_from_yo".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular10.copyWith(height: 1.00)))), Container(height: getVerticalSize(160.00), width: getHorizontalSize(380.00), margin: getMargin(left: 24, top: 41, right: 23), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.bottomLeft, child: Container(margin: getMargin(top: 10, bottom: 9), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_amount".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), Container(margin: getMargin(bottom: 1), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_balance".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.00)), TextSpan(text: "lbl_n".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.33, decoration: TextDecoration.lineThrough)), TextSpan(text: "lbl_24_000".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.00))]), textAlign: TextAlign.left))]))), Container(width: double.infinity, margin: getMargin(top: 3), decoration: AppDecoration.fillGreen60033.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 16, top: 12, right: 16, bottom: 11), child: Text("lbl_0_00".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular16.copyWith(height: 1.00))))]))]))), Align(alignment: Alignment.centerLeft, child: Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 1, right: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 1), child: Text("lbl_conversion_type".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), Container(margin: getMargin(bottom: 1), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_1".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.00)), TextSpan(text: "lbl_n".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.33, decoration: TextDecoration.lineThrough)), TextSpan(text: "lbl_700".tr, style: TextStyle(color: ColorConstant.gray800, fontSize: getFontSize(12), fontFamily: 'Lato', fontWeight: FontWeight.w400, height: 1.00))]), textAlign: TextAlign.left))]))), CustomDropDown(width: 380, focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowdownBluegray102)), hintText: "lbl_naira_to_dollar".tr, margin: getMargin(top: 3), padding: DropDownPadding.PaddingT13, items: controller.convertCurrencyOneModelObj.value.dropdownItemList, onChanged: (value) {controller.onSelected(value);}), Align(alignment: Alignment.center, child: Obx(() => Column(children: [CustomRadioButton(text: "msg_dollar_wallet".tr, iconSize: 10, value: controller.convertCurrencyOneModelObj.value.radioList[0], groupValue: controller.radioGroup.value, margin: getMargin(left: 29, top: 23, right: 206), onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "msg_naira_wallet_n1".tr, iconSize: 10, value: controller.convertCurrencyOneModelObj.value.radioList[1], groupValue: controller.radioGroup.value, margin: getMargin(left: 29, top: 21, right: 207, bottom: 12), onChange: (value) {controller.radioGroup.value = value;})])))])))])), Container(width: getHorizontalSize(348.00), margin: getMargin(left: 24, top: 332, right: 24), child: Text("msg_mustard_ng_conv".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtLatoRegular10.copyWith(height: 1.60))), CustomButton(width: 380, text: "lbl_complete".tr, margin: getMargin(left: 24, top: 105, right: 24), onTap: onTapBtnComplete)])))])))))); } 
onTapImgArrowleft() { Get.back(); } 
onTapBtnComplete() { Get.toNamed(AppRoutes.emailVerificationScreen); } 
 }