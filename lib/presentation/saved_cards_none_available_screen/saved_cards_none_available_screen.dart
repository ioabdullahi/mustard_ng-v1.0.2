import 'controller/saved_cards_none_available_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';class SavedCardsNoneAvailableScreen extends GetWidget<SavedCardsNoneAvailableController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(margin: getMargin(top: 11, bottom: 520), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(left: 24, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(top: 4), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getVerticalSize(17.00), width: getHorizontalSize(18.00)))), Padding(padding: getPadding(bottom: 1), child: Text("lbl_saved_cards".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold20.copyWith(height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(width: double.infinity, margin: getMargin(top: 8), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), decoration: BoxDecoration(color: ColorConstant.gray50)), Padding(padding: getPadding(left: 128, top: 21, right: 128), child: Text("msg_check_for_saved".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold12.copyWith(height: 1.00))), Container(height: getSize(100.00), width: getSize(100.00), margin: getMargin(left: 128, top: 113, right: 128), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.green60033, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(getHorizontalSize(50.00))), child: Stack(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(all: 10), child: CommonImageView(imagePath: ImageConstant.imgDebitcards, height: getVerticalSize(80.00), width: getHorizontalSize(75.00))))]))), Padding(padding: getPadding(left: 128, top: 44, right: 128), child: Text("msg_you_have_no_sav".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular16Green600.copyWith(height: 1.00)))])))])))))); } 
onTapImgArrowleft() { Get.back(); } 
 }