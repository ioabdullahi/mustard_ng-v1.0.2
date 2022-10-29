import 'controller/contact_us_controller.dart';import 'package:flutter/material.dart';import 'package:mustard_ng/core/app_export.dart';import 'package:mustard_ng/widgets/custom_icon_button.dart';class ContactUsScreen extends GetWidget<ContactUsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, body: Container(width: size.width, child: SingleChildScrollView(child: Container(margin: getMargin(top: 11, bottom: 467), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(width: size.width, margin: getMargin(left: 24, right: 24), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [GestureDetector(onTap: () {onTapImgArrowleft();}, child: Padding(padding: getPadding(top: 4), child: CommonImageView(svgPath: ImageConstant.imgArrowleftGreen600, height: getVerticalSize(17.00), width: getHorizontalSize(18.00)))), Padding(padding: getPadding(bottom: 1), child: Text("lbl_contact_us".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold20.copyWith(height: 1.00)))]))), Align(alignment: Alignment.centerLeft, child: Container(width: double.infinity, margin: getMargin(top: 8), decoration: AppDecoration.fillWhiteA700, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getVerticalSize(1.00), width: getHorizontalSize(428.00), decoration: BoxDecoration(color: ColorConstant.gray50)), Padding(padding: getPadding(left: 24, top: 22, right: 24), child: Text("msg_chosse_any_mean".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold12.copyWith(height: 1.00))), Container(height: getVerticalSize(98.00), width: getHorizontalSize(104.00), margin: getMargin(left: 24, top: 24, right: 24), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(98.00), width: getHorizontalSize(104.00), decoration: BoxDecoration(color: ColorConstant.green60033, borderRadius: BorderRadius.circular(getHorizontalSize(52.00))))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(left: 14, top: 19, right: 15, bottom: 19), child: CommonImageView(imagePath: ImageConstant.imgMaleuser, height: getVerticalSize(60.00), width: getHorizontalSize(75.00))))])), Container(height: getVerticalSize(176.00), width: getHorizontalSize(380.00), margin: getMargin(left: 24, top: 28, right: 24), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topLeft, child: Container(height: getVerticalSize(97.00), width: getHorizontalSize(380.00), margin: getMargin(bottom: 10), decoration: AppDecoration.outlineBlack9000c, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.bottomLeft, child: Container(height: getVerticalSize(63.00), width: getHorizontalSize(380.00), margin: getMargin(top: 10, bottom: 1), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(5.00)), topRight: Radius.circular(getHorizontalSize(5.00)), bottomRight: Radius.circular(getHorizontalSize(5.00))), border: Border.all(color: ColorConstant.green60033, width: getHorizontalSize(0.50)), boxShadow: [BoxShadow(color: ColorConstant.black9000c, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 3))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 15, top: 16, right: 15, bottom: 16), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 34, width: 34, margin: getMargin(bottom: 1), child: CommonImageView(svgPath: ImageConstant.imgCall34X34)), Container(margin: getMargin(left: 34, top: 1), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("lbl_call_us".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold16Gray800.copyWith(height: 1.00))), Container(width: getHorizontalSize(274.00), margin: getMargin(top: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 4), child: Text("msg_do_you_need_qu".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Gray800.copyWith(height: 1.00))), Padding(padding: getPadding(bottom: 2), child: CommonImageView(svgPath: ImageConstant.imgArrowright, height: getVerticalSize(12.00), width: getHorizontalSize(6.00)))]))]))])))]))), Align(alignment: Alignment.bottomLeft, child: Container(height: getVerticalSize(97.00), width: getHorizontalSize(380.00), margin: getMargin(top: 10), decoration: AppDecoration.outlineBlack9000c, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.bottomLeft, child: Container(height: getVerticalSize(63.00), width: getHorizontalSize(380.00), margin: getMargin(top: 10, bottom: 1), decoration: BoxDecoration(color: ColorConstant.whiteA700, borderRadius: BorderRadius.only(topLeft: Radius.circular(getHorizontalSize(5.00)), topRight: Radius.circular(getHorizontalSize(5.00)), bottomRight: Radius.circular(getHorizontalSize(5.00))), border: Border.all(color: ColorConstant.green60033, width: getHorizontalSize(0.50)), boxShadow: [BoxShadow(color: ColorConstant.black9000c, spreadRadius: getHorizontalSize(2.00), blurRadius: getHorizontalSize(2.00), offset: Offset(0, 3))]))), Align(alignment: Alignment.bottomCenter, child: Padding(padding: getPadding(left: 15, top: 17, right: 15, bottom: 17), child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [CustomIconButton(height: 34, width: 34, child: CommonImageView(svgPath: ImageConstant.imgMail)), Container(margin: getMargin(left: 34, top: 1, bottom: 2), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 10), child: Text("lbl_email".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoBold16Gray800.copyWith(height: 1.00))), Container(width: getHorizontalSize(274.00), margin: getMargin(top: 3), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [Padding(padding: getPadding(top: 2), child: Text("msg_send_an_email_t".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtLatoSemiBold10Gray800.copyWith(height: 1.00))), CommonImageView(svgPath: ImageConstant.imgArrowright, height: getVerticalSize(12.00), width: getHorizontalSize(6.00))]))]))])))])))]))])))])))))); } 
onTapImgArrowleft() { Get.back(); } 
 }
