import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';

class TransferSuccessful extends StatefulWidget {
  const TransferSuccessful({Key? key}) : super(key: key);

  @override
  State<TransferSuccessful> createState() => _TransferSuccessfulState();
}

class _TransferSuccessfulState extends State<TransferSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFF7E8),
      body: Padding(
        padding: const EdgeInsets.only(top:150.0, left: 18, right: 18),
        child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/success.png'),
              const Text(
                'Transfer Succesful',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'You have succesfully made a transfer to \n MN00140',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.grey,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Add to beneficiaries?',
                    style: TextStyle(color: AppColor.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Button(
                  text: 'FINISH',
                  onPressed: () {
                    Navigator.pushNamed(context, '/dashboard');
                  }),
                  const SizedBox(height: 180,),
              Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white, border: Border.all(color: AppColor.black, width: 0.8)),
                  child: const Align(
                    child: Text(
                      'GENERATE RECEIPT',
                      textAlign: TextAlign.center,
                    ),
                  ))
            ]),
      ),
    );
  }
}
