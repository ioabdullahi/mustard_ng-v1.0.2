import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/text_form.dart';

class ResetPassword extends StatefulWidget {
  final String email;
  const ResetPassword({Key? key, required this.email}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController? _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.maincolor,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Text(
                'Reset your password',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                'Enter your email address below and we will \nsend a code to reset your password.',
                style: TextStyle(color: AppColor.grey),
              ),
              AppTextFormField(
                controller: _email,
                hintText: 'Email Address',
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Empty field detected';
                  } else if (value.length < 2) {
                    return 'Firstname cannot be less than 3 characters';
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 70,
              ),
              Button(
                  text: 'Confirm email',
                  onPressed: () {
                    Navigator.pushNamed(context, '/emailverify');
                  }),
              const SizedBox(
                height: 10,
              ),
            ]),
      ),
    );
  }
}
