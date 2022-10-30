import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';

class TransferSummaryTag extends StatefulWidget {
  const TransferSummaryTag({Key? key}) : super(key: key);

  @override
  State<TransferSummaryTag> createState() => _TransferSummaryTagState();
}

class _TransferSummaryTagState extends State<TransferSummaryTag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transfer  summary'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CircleAvatar(
                backgroundColor: AppColor.maincolor20,
                foregroundColor: AppColor.black,
                radius: 40,
                child: const Text(
                  'TO',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
                )),
            const Text(
              'To Taiwo James Olaiti \n (MN001265) ',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.grey, width: 1.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    rowinfo(txt1: 'From', txt2: 'MN00140'),
                    const SizedBox(
                      height: 20,
                    ),
                    rowinfo(txt1: 'Transaction fee:', txt2: '\$0.00')
                  ],
                ),
              ),
            ),
            const SizedBox(height: 40),
            rowinfo(txt1: 'Description', txt2: 'human weavon'),
            const SizedBox(
              height: 20,
            ),
            rowinfo(txt1: 'Total:', txt2: '\$112.00'),
            const SizedBox(
              height: 120,
            ),
            Button(
                text: 'CONFIRM',
                onPressed: () {
                  Navigator.pushNamed(context, '/pinscreen');
                })
          ],
        ),
      ),
    );
  }

  rowinfo({String? txt1, txt2}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$txt1'),
        Text(
          '$txt2',
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
