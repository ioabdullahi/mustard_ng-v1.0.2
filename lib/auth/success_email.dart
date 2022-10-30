
import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';

class SuccessEmail extends StatefulWidget {
  const SuccessEmail({Key? key}) : super(key: key);

  @override
  State<SuccessEmail> createState() => _SuccessEmailState();
}

class _SuccessEmailState extends State<SuccessEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF7E8),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/success.png'),
                const Text(
                  'Verification Succesful',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                ),
                const SizedBox(height: 20,),
                Text('Your account has been successfully \n verified ', textAlign: TextAlign.center, style: TextStyle(color: AppColor.grey, ),),
                const SizedBox(height: 30,),
                Button(text: 'Let\'s get Started', onPressed:(){Navigator.pushNamed(context, '/login');})
              ]),
        ),
      ),
    );
  }
}
