import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/text_form.dart';

class Login extends StatefulWidget {
  final String email, password;
  const Login({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController? _password, _email;
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
                'Welcome Back!',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                'Let\'s get you logged back in.',
                style: TextStyle(color: AppColor.grey),
              ),
              AppTextFormField(
                controller: _email,
                hintText: 'Phone number',
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
              AppTextFormField(
                controller: _password,
                hintText: 'Password',
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
                  text: 'Sign in',
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  }),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/resetpassword');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Forgot your password?',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Reset here',
                      style: TextStyle(color: AppColor.maincolor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      ' Sign Up',
                      style: TextStyle(color: AppColor.maincolor),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
