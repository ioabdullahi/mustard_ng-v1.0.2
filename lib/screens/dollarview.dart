import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class DollarView extends StatefulWidget {
  const DollarView({Key? key}) : super(key: key);

  @override
  State<DollarView> createState() => _DollarViewState();
}

class _DollarViewState extends State<DollarView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 193,
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/usa.png'),
              Text(
                'USD Wallet Balance ',
                style: TextStyle(color: AppColor.maincolor),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '\$5000.00 ',
                style: TextStyle(
                    color: AppColor.maincolor,
                    fontSize: 32,
                    fontWeight: FontWeight.w700),
              ),
              Icon(
                Icons.remove_red_eye_outlined,
                color: AppColor.maincolor,
                size: 18,
              ),
            ],
          ),
          const SizedBox(height: 60,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center
          ,mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 3,
              width: 9,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey //: const Color(0xffD9D9D9),
                  ),
            ),
            Container(
              height: 3,
              width: 16,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: AppColor.maincolor //: const Color(0xffD9D9D9),
                  ),
            )
          ],
        )
        ]));
  }
}
