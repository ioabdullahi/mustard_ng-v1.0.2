import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:pinput/pinput.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({Key? key}) : super(key: key);

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  TextEditingController? _pinPutController;
  final FocusNode _pinPutFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColor.maincolor,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Email verification',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
            ),
            Text(
              'We just sent a one-time password to',
              style: TextStyle(color: AppColor.grey),
            ),
            Row(
              children: [
                Text(
                  'n******@gmail.com.',
                  style: TextStyle(color: AppColor.maincolor),
                ),
                Text(
                  ' Insert it below',
                  style: TextStyle(color: AppColor.grey),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              child: Pinput(
                defaultPinTheme: PinTheme( width:40,
                  height:40,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: AppColor.maincolor),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width:40,
                  height:40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: AppColor.maincolor),
                  ),
                ),
                length: 6,
                // fieldsCount: 6,
                autofocus: true,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedPinTheme: PinTheme(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) async {
                  if (value.length == 6) {}
                },
              ),
            ),
            
            const SizedBox(
              height: 100,
            ),
            Button(
                text: 'Verify OTP',
                onPressed: () {
                  Navigator.pushNamed(context, '/successemail');
                }),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Didn\'t receive OTP?',
                  style: TextStyle(color: Colors.black),
                ),
                Text(
                  ' Resend',
                  style: TextStyle(color: AppColor.maincolor),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
