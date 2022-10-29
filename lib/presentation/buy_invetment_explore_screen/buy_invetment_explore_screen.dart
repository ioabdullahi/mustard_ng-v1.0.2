import '../buy_invetment_explore_screen/widgets/gridroadtransport_item_widget.dart';import 'controller/buy_invetment_explore_controller.dart';import 'models/gridroadtransport_item_model.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_button.dart';import 'package:mustard_ng/widgets/custom_search_view.dart';class BuyInvetmentExploreScreen extends GetWidget<BuyInvetmentExploreController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(margin: getMargin(left: 24, top: 9, right: 24, bottom: 44), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(child: Container(child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(right: 10), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getVerticalSize(14.00), width: getHorizontalSize(18.00)))), Container(margin: getMargin(top: 30), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 1, right: 10), child: Text("lbl_buy_investments".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold28Green600.copyWith(height: 1.00))), Padding(padding: getPadding(left: 1, top: 1, right: 10), child: Text("msg_you_can_invest".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Black900.copyWith(height: 1.00))), Container(margin: getMargin(top: 17), decoration: AppDecoration.outlineBlack90019.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Container(margin: getMargin(left: 18, top: 9, bottom: 10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: CommonImageView(imagePath: ImageConstant.imgIcons8moneyba, height: getVerticalSize(50.00), width: getHorizontalSize(57.00))), Padding(padding: getPadding(top: 15), child: Text("lbl_100_00_002".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold28Black900.copyWith(height: 1.00))), Padding(padding: getPadding(left: 3, top: 4, right: 10), child: Text("lbl_ngn".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoRegular12.copyWith(height: 1.00)))])), Padding(padding: getPadding(top: 9, right: 1, bottom: 5), child: CommonImageView(imagePath: ImageConstant.imgDollar, height: getVerticalSize(114.00), width: getHorizontalSize(76.00)))])), Container(height: getVerticalSize(48.00), width: getHorizontalSize(380.00), margin: getMargin(top: 32), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: ClipRRect(borderRadius: BorderRadius.circular(getHorizontalSize(10.00)), child: CommonImageView(svgPath: ImageConstant.imgRectangle52, height: getVerticalSize(48.00), width: getHorizontalSize(380.00)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 40, right: 40), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 18, bottom: 17), child: Text("lbl_active".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold12Black900.copyWith(height: 1.00))), CustomButton(width: 122, text: "lbl_explore".tr, margin: getMargin(left: 32), shape: ButtonShape.Square, padding: ButtonPadding.PaddingAll19, fontStyle: ButtonFontStyle.LatoBold12WhiteA700), Padding(padding: getPadding(left: 38, top: 18, bottom: 17), child: Text("lbl_matured".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold12Black900.copyWith(height: 1.00)))])))])), CustomSearchView(width: 380, focusNode: FocusNode(), controller: controller.inputController, hintText: "msg_search_for_inve".tr, margin: getMargin(top: 24), padding: SearchViewPadding.PaddingT161_2, prefix: Container(margin: getMargin(left: 18, top: 16, right: 6, bottom: 8), child: CommonImageView(svgPath: ImageConstant.imgSearch)), prefixConstraints: BoxConstraints(minWidth: getSize(15.00), minHeight: getSize(15.00))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 40, right: 1), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(273.00), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(17.00), crossAxisSpacing: getHorizontalSize(17.00)), physics: NeverScrollableScrollPhysics(), itemCount: controller.buyInvetmentExploreModelObj.value.gridroadtransportItemList.length, itemBuilder: (context, index) {GridroadtransportItemModel model = controller.buyInvetmentExploreModelObj.value.gridroadtransportItemList[index]; return GridroadtransportItemWidget(model);}))))]))])))))])))); } 
onTapImgArrowleft() { Get.back(); } 
 }
