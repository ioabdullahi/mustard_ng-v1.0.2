import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/cards.dart';
class SendMoney extends StatefulWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        foregroundColor: AppColor.maincolor,
        title: Text(
          'Send Money',
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(children: [
          Moneycard(
              subtext:
                  'You can send money to another Mustard.ng user through their tags.',
              title: 'Send Money to Mustard user',
              img: 'assets/images/mustardicon.png',
              ontap: () {
                Navigator.pushNamed(context, '/sendmoneymustardtag');
              }),
          Moneycard(
              subtext:
                  'Transfer easily from Mustard.ng wallet to any banks.',
              title: 'Bank Transfer',
              img: 'assets/images/transfer.png',
              ontap: () {
                Navigator.pushNamed(context, '/sendmoneybanktransfer');
              }),
          Moneycard(
              title: 'Convert Currency',
              subtext: 'You can convert your currency at the best rate in the market.',
              img: 'assets/images/domicon.png',
              ontap: () {
                Navigator.pushNamed(context, '/convertcurrency');
              })
        ]),
      ),
    );
  }

  
}
