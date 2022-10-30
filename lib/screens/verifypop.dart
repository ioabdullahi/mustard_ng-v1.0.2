import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';

class VerifyPop extends StatefulWidget {
  const VerifyPop({Key? key}) : super(key: key);

  @override
  State<VerifyPop> createState() => _VerifyPopState();
}

class _VerifyPopState extends State<VerifyPop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel_outlined,
                  size: 22,
                  color: AppColor.maincolor,
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            CircleAvatar(
              radius: 30,
              backgroundColor: AppColor.maincolor20,
              child: Icon(
                Icons.lock_outlined,
                color: AppColor.black,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              'Let\'s get you verified',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'You can now verify your account in just \n few steps',
              style: TextStyle(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 36,
            ),
            Button(text: 'Verify Now', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
