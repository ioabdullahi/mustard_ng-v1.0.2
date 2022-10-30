import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/text_form.dart';

class SignUpScreen extends StatefulWidget {
  final String email, phone, password;
  const SignUpScreen(
      {Key? key,
      required this.email,
      required this.phone,
      required this.password})
      : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool valuecheck = false;

  final _formKey = GlobalKey<FormState>();
  TextEditingController? _lastname,
      _firstname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.maincolor,
      appBar: AppBar(
        backgroundColor: AppColor.maincolor,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 23.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Setup Your Account!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                Text(
                  'Enter your information below to create a Mustard.ng account',
                  style: TextStyle(fontSize: 10, color: AppColor.grey),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: AppTextFormField(
                              controller: _lastname,
                              hintText: 'First Name',
                              textInputAction: TextInputAction.next,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Empty field detected';
                                } else if (value.length < 2) {
                                  return 'Lastname cannot be less than 3 characters';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            flex: 2,
                            child: AppTextFormField(
                              controller: _firstname,
                              hintText: 'Surname',
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
                          ),
                        ],
                      ),
                      AppTextFormField(
                        controller: _firstname,
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
                      AppTextFormField(
                        controller: _firstname,
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
                        controller: _firstname,
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
                      AppTextFormField(
                        controller: _firstname,
                        hintText: 'Referral code(optional)',
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
                      //   Checkbox(
                      //   value: this.valuecheck,
                      //   onChanged: (bool? value) {
                      //     setState(() {
                      //       this.valuecheck = value;
                      //     });
                      //   },
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      Button(
                        onPressed: () {
                          Navigator.pushNamed(context, '/emailverify');
                        },
                        text: 'Sign Up',
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
