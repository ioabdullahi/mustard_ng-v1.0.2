import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class BankTranfer extends StatefulWidget {
  const BankTranfer({Key? key}) : super(key: key);

  @override
  State<BankTranfer> createState() => _BankTranferState();
}

class _BankTranferState extends State<BankTranfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Transfer'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'You can add fund to your Mustard account by copying any of your dedicated account number and transfer to it on your bank app, your wallet will be automatically funded.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Bank'),
              detailContainer(text: 'Sterling Bank'),
               const SizedBox(height: 28),const Text('Account number'),
              detailContainer(text: '0071147106'),
              const SizedBox(height: 28,),
               const Text('Account name'),
              detailContainer(text: 'SMNG/Nosa Nick'),

            ]),
      ),
    );
  }

  detailContainer({
    String? text
  }) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: AppColor.maincolor20,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$text',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            )),
      ),
    );
  }
}
