import '../saving_plan_break_savings_screen/widgets/listdate_item_widget.dart';import '../saving_plan_break_savings_screen/widgets/listfrequency_item_widget.dart';import 'controller/saving_plan_break_savings_controller.dart';import 'models/listdate_item_model.dart';import 'models/listfrequency_item_model.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';import 'package:mustard_ng/widgets/custom_text_form_field.dart';class SavingPlanBreakSavingsScreen extends GetWidget<SavingPlanBreakSavingsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(height: getVerticalSize(883.00), width: getHorizontalSize(428.00), child: Stack(children: [Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(child: Container(height: getVerticalSize(883.00), width: getHorizontalSize(428.00), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.bottomLeft, child: Container(margin: getMargin(top: 27, bottom: 27), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), decoration: BoxDecoration(color: ColorConstant.bluegray102)), Container(width: double.infinity, margin: getMargin(left: 24, top: 39, right: 24), decoration: AppDecoration.outlineGray80012.copyWith(borderRadius: BorderRadiusStyle.customBorderTL5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 144, top: 15, right: 143, bottom: 16), child: Text("lbl_view_more".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoExtraBold16Gray800.copyWith(height: 1.00)))]))]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: getMargin(left: 23, top: 155, right: 23, bottom: 155), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 59, right: 59), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(margin: getMargin(top: 1), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 23, top: 26, right: 23, bottom: 26), child: CommonImageView(svgPath: ImageConstant.imgCalendar20X18, height: getVerticalSize(20.00), width: getHorizontalSize(18.00))))])))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 13, top: 7, right: 13), child: Text("lbl_extend".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))))])), Container(margin: getMargin(left: 36), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 23, top: 24, right: 23, bottom: 24), child: CommonImageView(svgPath: ImageConstant.imgLock, height: getVerticalSize(20.00), width: getHorizontalSize(18.00))))])))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 16, top: 8, right: 16), child: Text("lbl_break".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))))])), Container(margin: getMargin(left: 33), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 21, top: 25, right: 21, bottom: 25), child: CommonImageView(svgPath: ImageConstant.imgSettings, height: getSize(22.00), width: getSize(22.00))))])))), Padding(padding: getPadding(left: 13, top: 8, right: 13), child: Text("lbl_settings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00)))]))])), Padding(padding: getPadding(top: 38, right: 12), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Text("msg_recent_transact".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold18.copyWith(height: 1.00)), Padding(padding: getPadding(top: 1, bottom: 6), child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Gray500.copyWith(height: 1.00, decoration: TextDecoration.underline)))])), Padding(padding: getPadding(left: 1, top: 14), child: Obx(() => ListView.builder(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, itemCount: controller.savingPlanBreakSavingsModelObj.value.listdateItemList.length, itemBuilder: (context, index) {ListdateItemModel model = controller.savingPlanBreakSavingsModelObj.value.listdateItemList[index]; return ListdateItemWidget(model);})))]))), Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 22, top: 55, right: 22, bottom: 55), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 49, right: 49), child: Text("msg_target_savings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold16Gray800.copyWith(height: 1.00))), Padding(padding: getPadding(left: 49, top: 20, right: 49), child: Text("lbl_5000_002".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold32Green600.copyWith(height: 1.00))), Padding(padding: getPadding(left: 49, top: 16, right: 49), child: Text("msg_save_with_disci".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(26.00), width: getHorizontalSize(382.00), margin: getMargin(top: 10), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), child: CommonImageView(svgPath: ImageConstant.imgRectangle39, height: getVerticalSize(26.00), width: getHorizontalSize(382.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 14), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(height: getVerticalSize(26.00), width: getHorizontalSize(145.00), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(right: 10), child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), child: CommonImageView(imagePath: ImageConstant.imgRectangle40, height: getVerticalSize(26.00), width: getHorizontalSize(101.00))))), Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(left: 10, top: 10, bottom: 6), child: Text("msg_we_couldn_t_cha".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))))])), Padding(padding: getPadding(left: 202, top: 10, bottom: 5), child: Text("lbl_27".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Deeporange901.copyWith(height: 1.00)))])))])))]))), Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 24, top: 341, right: 24, bottom: 341), decoration: AppDecoration.fillGreen600.copyWith(borderRadius: BorderRadiusStyle.customBorderTL5), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 135, top: 16, right: 132, bottom: 15), child: Text("lbl_quick_top_up".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoExtraBold16WhiteA700.copyWith(height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(879.00), width: getHorizontalSize(428.00), margin: getMargin(bottom: 4), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 23, top: 17, right: 23, bottom: 17), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getSize(18.00), width: getSize(18.00)))), Padding(padding: getPadding(top: 175), child: Obx(() => ListView.builder(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, itemCount: controller.savingPlanBreakSavingsModelObj.value.listfrequencyItemList.length, itemBuilder: (context, index) {ListfrequencyItemModel model = controller.savingPlanBreakSavingsModelObj.value.listfrequencyItemList[index]; return ListfrequencyItemWidget(model);})))]))), Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(879.00), width: getHorizontalSize(428.00), decoration: BoxDecoration(color: ColorConstant.black90087)))]))), Align(alignment: Alignment.bottomLeft, child: Container(height: getVerticalSize(509.00), width: getHorizontalSize(428.00), margin: getMargin(top: 10), child: Stack(alignment: Alignment.centerLeft, children: [CustomButton(width: 380, text: "lbl_buy_shares".tr, margin: getMargin(left: 24, top: 10, right: 24, bottom: 10), onTap: onTapBtnBuyshares, alignment: Alignment.bottomCenter), Align(alignment: Alignment.centerLeft, child: Container(decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 20, top: 3, right: 20), child: CommonImageView(svgPath: ImageConstant.imgComponentlott104X54, height: getVerticalSize(104.00), width: getHorizontalSize(54.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 20, top: 31, right: 20), child: Text("lbl_please_confirm".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold24.copyWith(height: 1.00)))), Align(alignment: Alignment.center, child: Container(width: getHorizontalSize(255.00), margin: getMargin(left: 20, top: 4, right: 20), child: Text("msg_are_you_sure_yo".tr, maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtLatoSemiBold16Gray800.copyWith(height: 1.50)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 26, top: 19, right: 26), child: Text("lbl_enter_amount".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12Gray800.copyWith(height: 1.00)))), CustomTextFormField(width: 380, focusNode: FocusNode(), controller: controller.rectangleThirtyTwoController2, margin: getMargin(left: 20, top: 3, right: 20), variant: TextFormFieldVariant.OutlineGreen500, textInputAction: TextInputAction.done, alignment: Alignment.center), CustomButton(width: 380, text: "lbl_yes_break".tr, margin: getMargin(left: 20, top: 115, right: 20, bottom: 63), shape: ButtonShape.Square, onTap: onTapBtnYesbreak, alignment: Alignment.center)])))])))]))))])))); } 
onTapImgArrowleft() { Get.back(); } 
onTapBtnBuyshares() { Get.toNamed(AppRoutes.emailVerificationScreen); } 
onTapBtnYesbreak() { Get.toNamed(AppRoutes.emailVerificationScreen); } 
 }
