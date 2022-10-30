import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/images.dart';
import 'package:mustard_ng/utils/text.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;
  List<String> texts = [AppTexts.txt1, AppTexts.txt2, AppTexts.txt3];
  List<String> images = [AppImages.on1, AppImages.on2, AppImages.on3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    images[currentIndex],
                    height: 400,
                  ),
                ),

                Text(
                  texts[currentIndex],
                  textAlign: TextAlign.left,
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.w700, fontFamily: 'Lato'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (int i = 0; i < images.length; i++)
                            i == currentIndex
                                ? circleIndicator(true)
                                : circleIndicator(false)
                        ]),
                    MaterialButton(
                      elevation: 15,
                      onPressed: () {
                        if (currentIndex == 2) {
                          //Navigator.pushReplacementNamed(context, '/homepage');
                        } else {
                          setState(() => currentIndex++);
                        }
                      },
                      child: currentIndex == 2
                          ? null
                          : const CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xffCBCBD4),
                              )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     currentIndex == 2
                //         ? const Center()
                //         : TextButton(
                //             onPressed: () {
                //               setState(() => currentIndex = 2);
                //             },
                //             child: Text(
                //               'SKIP',
                //               style: TextStyle(
                //                   color: Colors.black,
                //                   fontSize: 20,
                //                   fontWeight: FontWeight.w600),
                //             ),
                //           ),
                //     TextButton(
                //         onPressed: () {
                //           if (currentIndex == 2) {
                //             Navigator.pushReplacementNamed(
                //                 context, '/homepage');
                //           } else {
                //             setState(() => currentIndex++);
                //           }
                //         },
                //         child: Text(
                //           currentIndex == 2 ? 'GET STARTED' : 'NEXT',
                //           style: TextStyle(
                //               color: Colors.black,
                //               fontSize: 20,
                //               fontWeight: FontWeight.w600),
                //         ))
                //   ],
                // ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonS(
                        text: 'LOGIN',
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        }),
                    ButtonSO(
                        text: 'REGISTER',
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        })
                  ],
                ),

                // Center(child: Text('This is an On boarding Screen')),
              ],
            ),
          ),
        ),
      )),
    );
  }

  Widget circleIndicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      height: 5,
      width: 24,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: isActive ? AppColor.maincolor : const Color(0xffD9D9D9),
      ),
    );
  }
}
