import '../saving_plan_ongoing_screen/widgets/listdate_one1_item_widget.dart';import '../saving_plan_ongoing_screen/widgets/listfrequency3_item_widget.dart';import 'controller/saving_plan_ongoing_controller.dart';import 'models/listdate_one1_item_model.dart';import 'models/listfrequency3_item_model.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';class SavingPlanOngoingScreen extends GetWidget<SavingPlanOngoingController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(margin: getMargin(top: 17, bottom: 14), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Expanded(child: Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(child: Container(child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(left: 24, right: 24), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getSize(18.00), width: getSize(18.00))))), Align(alignment: Alignment.centerLeft, child: Container(margin: getMargin(top: 19), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, right: 24), child: Text("msg_target_savings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold16Gray800.copyWith(height: 1.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 20, right: 24), child: Text("lbl_5000_002".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold32Green600.copyWith(height: 1.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 16, right: 24), child: Text("msg_save_with_disci".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00)))), Align(alignment: Alignment.center, child: Container(height: getVerticalSize(26.00), width: getHorizontalSize(382.00), margin: getMargin(left: 24, top: 10, right: 22), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), child: CommonImageView(svgPath: ImageConstant.imgRectangle39, height: getVerticalSize(26.00), width: getHorizontalSize(382.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(right: 14), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(height: getVerticalSize(26.00), width: getHorizontalSize(107.00), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(5.00)), child: CommonImageView(imagePath: ImageConstant.imgRectangle40, height: getVerticalSize(26.00), width: getHorizontalSize(107.00)))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: getPadding(left: 15, top: 10, right: 15, bottom: 6), child: Text("lbl_my_progress".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Gray800.copyWith(height: 1.00))))])), Padding(padding: getPadding(left: 241, top: 10, bottom: 5), child: Text("lbl_27".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Green600.copyWith(height: 1.00)))])))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 25, right: 23), child: Obx(() => ListView.builder(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, itemCount: controller.savingPlanOngoingModelObj.value.listfrequency3ItemList.length, itemBuilder: (context, index) {Listfrequency3ItemModel model = controller.savingPlanOngoingModelObj.value.listfrequency3ItemList[index]; return Listfrequency3ItemWidget(model);})))), CustomButton(width: 380, text: "lbl_quick_top_up".tr, margin: getMargin(left: 24, top: 39, right: 24), alignment: Alignment.center), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 39, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(margin: getMargin(top: 1), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 23, top: 26, right: 23, bottom: 26), child: CommonImageView(svgPath: ImageConstant.imgCalendar20X18, height: getVerticalSize(20.00), width: getHorizontalSize(18.00))))])))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 13, top: 7, right: 13), child: Text("lbl_extend".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))))])), Container(margin: getMargin(left: 36), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.topCenter, child: Padding(padding: getPadding(left: 23, top: 24, right: 23, bottom: 24), child: CommonImageView(svgPath: ImageConstant.imgLock, height: getVerticalSize(20.00), width: getHorizontalSize(18.00))))])))), Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 16, top: 8, right: 16), child: Text("lbl_break".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))))])), Container(margin: getMargin(left: 33), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(72.00), width: getHorizontalSize(64.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(5.00))), child: Stack(children: [Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 21, top: 25, right: 21, bottom: 25), child: CommonImageView(svgPath: ImageConstant.imgSettings, height: getSize(22.00), width: getSize(22.00))))])))), Padding(padding: getPadding(left: 13, top: 8, right: 13), child: Text("lbl_settings".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00)))]))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 38, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.max, children: [Text("msg_recent_transact".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold18.copyWith(height: 1.00)), Padding(padding: getPadding(top: 1, bottom: 6), child: Text("lbl_see_all".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Gray500.copyWith(height: 1.00, decoration: TextDecoration.underline)))]))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 24, top: 14, right: 23), child: Obx(() => ListView.builder(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, itemCount: controller.savingPlanOngoingModelObj.value.listdateOne1ItemList.length, itemBuilder: (context, index) {ListdateOne1ItemModel model = controller.savingPlanOngoingModelObj.value.listdateOne1ItemList[index]; return ListdateOne1ItemWidget(model);})))), Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), margin: getMargin(top: 40), decoration: BoxDecoration(color: ColorConstant.bluegray102)), CustomButton(width: 380, text: "lbl_view_more".tr, margin: getMargin(left: 24, top: 39, right: 24), variant: ButtonVariant.OutlineGray800, fontStyle: ButtonFontStyle.LatoExtraBold16Gray800, alignment: Alignment.center)])))])))))])))); } 
onTapImgArrowleft() { Get.back(); } 
 }
