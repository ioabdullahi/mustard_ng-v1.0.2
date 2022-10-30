import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class AddMoneyMustardTag extends StatefulWidget {
  const AddMoneyMustardTag({Key? key}) : super(key: key);

  @override
  State<AddMoneyMustardTag> createState() => _AddMoneyMustardTagState();
}

class _AddMoneyMustardTagState extends State<AddMoneyMustardTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Request Money',
      )),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'You can add fund to your Mustard account by copying your personal tag and send it to another Mustard account user to transfer to you.',
              style: TextStyle(fontSize: 12),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Container(
              height: 232,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.maincolor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('MN001',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 32,
                              color: Colors.white),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text('Your Personal Mustard tag',  style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Colors.white))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
