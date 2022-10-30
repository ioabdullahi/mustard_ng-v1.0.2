import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

import '../../utils/cards.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  State<AddMoney> createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        foregroundColor: AppColor.maincolor,
        title: Text(
          'Add Money',
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(children: [
          Moneycard(
              subtext:
                  'You can request money from another Mustard user by sending them your tag to them.',
              title: 'Request with tag',
              img: 'assets/images/mustardicon.png',
              ontap: () {
                Navigator.pushNamed(context, '/addmoneymustardtag');
              }),
          Moneycard(
              subtext:
                  'Transfer from bank app or internet banking to your dedicated accoints.',
              title: 'Bank Transfer',
              img: 'assets/images/transfer.png',
              ontap: () {
                Navigator.pushNamed(context, '/banktransfer');
              }),
          Moneycard(
              title: 'Card',
              subtext: 'Add money with a debit card.',
              img: 'assets/images/card.png',
              ontap: () {
                Navigator.pushNamed(context, '/addmoneycard');
              })
        ]),
      ),
    );
  }


}
