import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class NairaView extends StatefulWidget {
  const NairaView({Key? key}) : super(key: key);

  @override
  State<NairaView> createState() => _NairaViewState();
}

class _NairaViewState extends State<NairaView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 193,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColor.maincolor),
      child: Column(children: [
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/nigeria.jpg'),
            const Text(
              'Naira Wallet Balance ',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '₦5000.00 ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.remove_red_eye_outlined,
              color: Colors.white,
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
              width: 16,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white //: const Color(0xffD9D9D9),
                  ),
            ),
            Container(
              height: 3,
              width: 9,
              margin: const EdgeInsets.symmetric(horizontal: 2),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey //: const Color(0xffD9D9D9),
                  ),
            )
          ],
        )
      ]),
    );
  }
}
