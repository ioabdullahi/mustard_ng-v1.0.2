import 'controller/buy_investment_buy_shares_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';
// ignore_for_file: must_be_immutable
class BuyInvestmentBuySharesBottomsheet extends StatelessWidget {BuyInvestmentBuySharesBottomsheet(this.controller);

BuyInvestmentBuySharesController controller;

@override Widget build(BuildContext context) { return SingleChildScrollView(child: Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.end, children: [Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(child: Container(height: getVerticalSize(433.00), width: getHorizontalSize(428.00), child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.whiteA700, shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(30.00)), topRight: Radius.circular(getHorizontalSize(30.00)))), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Container(margin: getMargin(left: 84, top: 56, right: 84, bottom: 56), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: getPadding(left: 86, right: 86), child: CommonImageView(svgPath: ImageConstant.imgComponentlott, height: getVerticalSize(98.00), width: getHorizontalSize(59.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 42, top: 7, right: 35), child: Text("msg_order_successfu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold24.copyWith(height: 1.00)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(top: 18), child: Text("msg_you_just_bought".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold16Gray800.copyWith(height: 1.00))))]))), Align(alignment: Alignment.topCenter, child: GestureDetector(onTap: () {onTapButton();}, child: Container(margin: getMargin(left: 24, top: 35, right: 24, bottom: 20), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.end, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapImgClose();}, child: Padding(padding: getPadding(left: 10), child: CommonImageView(svgPath: ImageConstant.imgClose, height: getSize(25.00), width: getSize(25.00)))), CustomButton(width: 380, text: "lbl_back_to_invest".tr, margin: getMargin(top: 237), alignment: Alignment.centerLeft)]))))])))))]))); } 
onTapButton() { Get.toNamed(AppRoutes.emailVerificationScreen); } 
onTapImgClose() { Get.back(); } 
 }
