import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class Moneycard extends StatelessWidget {
  final void Function() ontap;
  final String title, img, subtext;
  const Moneycard({Key? key, required this.title, required this.img, required this.ontap, required this.subtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        // margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
            // color: Colors.transparent,
            // border: Border(
            //   bottom: BorderSide(
            //     color: Color(0xffE0E0E0),
            //   ),
            // ),
            ),
        child: Card(
            shadowColor: AppColor.shadowcolor,
            elevation: 15,
            child: ListTile(
              // minLeadingWidth:5,
              // minVerticalPadding:12,

              leading: Image.asset(img),
              isThreeLine: true,
              subtitle: Text(
                subtext,
                style: const TextStyle(fontSize: 10),
              ),
              title: Text(
                title,
                style: TextStyle(
                    color: AppColor.maincolor,
                    fontWeight: FontWeight.w800,
                    fontSize: 12),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.maincolor,
                size: 18,
              ),
            )),
      ),
    );
  }
}
