import 'controller/create_a_target_plan_three_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';import 'package:mustard_ng/widgets/custom_drop_down.dart';import 'package:mustard_ng/widgets/custom_radio_button.dart';import 'package:mustard_ng/widgets/custom_text_form_field.dart';class CreateATargetPlanThreeScreen extends GetWidget<CreateATargetPlanThreeController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(margin: getMargin(top: 17, bottom: 36), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(child: Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(left: 24, right: 24), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getSize(18.00), width: getSize(18.00)))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(621.00), width: getHorizontalSize(381.00), margin: getMargin(left: 24, top: 56, right: 23), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topLeft, child: Container(margin: getMargin(right: 10, bottom: 10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("msg_create_a_person".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold20Green600.copyWith(height: 1.00))), Padding(padding: getPadding(top: 7, right: 10), child: Text("msg_set_up_a_plan_t".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))), Align(alignment: Alignment.centerRight, child: Container(width: getHorizontalSize(323.00), margin: getMargin(left: 10, top: 505), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_mustard_ng_help2".tr, style: TextStyle(color: ColorConstant.black900, fontSize: getFontSize(10), fontFamily: 'Lato', fontWeight: FontWeight.w600, height: 1.20)), TextSpan(text: "msg_check_today_s_r".tr, style: TextStyle(color: ColorConstant.green600, fontSize: getFontSize(10), fontFamily: 'Lato', fontWeight: FontWeight.w600, height: 1.20))]), textAlign: TextAlign.center)))]))), Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 1, top: 81, bottom: 81), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("lbl_target_title".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.rectangleThirtyTwoController5, margin: getMargin(top: 3), variant: TextFormFieldVariant.OutlineGray800)]))), Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 1, top: 161, bottom: 161), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("msg_select_a_catego".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), CustomDropDown(width: 380, focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "msg_purpose_of_savi".tr, margin: getMargin(top: 3), variant: DropDownVariant.OutlineGray800, fontStyle: DropDownFontStyle.LatoRegular12, items: controller.createATargetPlanThreeModelObj.value.dropdownItemList, onChanged: (value) {controller.onSelected(value);})]))), Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 1, top: 242, bottom: 242), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("msg_set_your_target".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.rectangleThirtyTwoOneController4, margin: getMargin(top: 3), variant: TextFormFieldVariant.OutlineGray800, textInputAction: TextInputAction.done)]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(left: 1, top: 245, bottom: 245), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("msg_choose_your_pla".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), CustomDropDown(width: 380, focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30, right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowdown)), hintText: "msg_how_would_you_l".tr, margin: getMargin(top: 3), variant: DropDownVariant.OutlineGray800, fontStyle: DropDownFontStyle.LatoRegular12, items: controller.createATargetPlanThreeModelObj.value.dropdownItemList1, onChanged: (value) {controller.onSelected1(value);})]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(left: 1, top: 10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("msg_how_much_would".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00))), Container(margin: getMargin(top: 3), decoration: AppDecoration.outlineGreen600.copyWith(borderRadius: BorderRadiusStyle.roundedBorder3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Container(height: getVerticalSize(25.00), width: getHorizontalSize(1.00), margin: getMargin(top: 10, bottom: 5), decoration: BoxDecoration(color: ColorConstant.green600)), CustomDropDown(width: 349, focusNode: FocusNode(), icon: Container(margin: getMargin(left: 30), child: CommonImageView(svgPath: ImageConstant.imgArrowdownGreen600)), hintText: "lbl_n".tr, margin: getMargin(top: 14, bottom: 9), fontStyle: DropDownFontStyle.LatoBold16, items: controller.createATargetPlanThreeModelObj.value.dropdownItemList2, onChanged: (value) {controller.onSelected2(value);})])), Align(alignment: Alignment.center, child: Container(width: double.infinity, margin: getMargin(left: 5, top: 2, right: 3), decoration: AppDecoration.outlineBlack90019, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.end, children: [Padding(padding: getPadding(left: 28, top: 16, right: 28), child: Text("msg_choose_amount_t".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold12.copyWith(height: 1.00))), Obx(() => Column(children: [CustomRadioButton(text: "lbl_1000".tr, iconSize: 10, value: controller.createATargetPlanThreeModelObj.value.radioList[0], groupValue: controller.radioGroup.value, margin: getMargin(right: 7), onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "lbl_3000".tr, iconSize: 10, value: controller.createATargetPlanThreeModelObj.value.radioList[1], groupValue: controller.radioGroup.value, margin: getMargin(top: 17, right: 6), onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "lbl_5000".tr, iconSize: 10, value: controller.createATargetPlanThreeModelObj.value.radioList[2], groupValue: controller.radioGroup.value, margin: getMargin(top: 15, right: 6), onChange: (value) {controller.radioGroup.value = value;}), CustomRadioButton(text: "lbl_100002".tr, iconSize: 10, value: controller.createATargetPlanThreeModelObj.value.radioList[3], groupValue: controller.radioGroup.value, margin: getMargin(top: 15), onChange: (value) {controller.radioGroup.value = value;})])), Padding(padding: getPadding(left: 29, top: 14, right: 29), child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.min, children: [Container(height: getVerticalSize(5.00), width: getHorizontalSize(10.00), margin: getMargin(top: 1), decoration: BoxDecoration(color: ColorConstant.green600, borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), border: Border.all(color: ColorConstant.green600, width: getHorizontalSize(1.00)))), Padding(padding: getPadding(left: 7), child: Text("lbl_other".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold12.copyWith(height: 1.00)))]))])))])))]))), Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), margin: getMargin(top: 32), decoration: BoxDecoration(color: ColorConstant.bluegray102)), Align(alignment: Alignment.center, child: Container(width: double.infinity, margin: getMargin(left: 24, top: 39, right: 24), decoration: AppDecoration.fillGreen600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [CustomButton(width: 380, text: "lbl_tap_to_continue".tr, variant: ButtonVariant.OutlineGreen6001_2, alignment: Alignment.centerLeft)])))])))))])))); } 
onTapImgArrowleft() { Get.back(); } 
 }
