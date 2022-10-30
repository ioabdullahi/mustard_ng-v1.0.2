import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/text_form.dart';

class AddMoneyCard extends StatefulWidget {
  const AddMoneyCard({Key? key}) : super(key: key);

  @override
  State<AddMoneyCard> createState() => _AddMoneyCardState();
}

class _AddMoneyCardState extends State<AddMoneyCard> {
  String? _wallettype;
  int? selectedIndex;
  List<String>? wallettypes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: const Text('Add Money by Card'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Align(
              //  alignment: Alignment.center,
              child: Text(
                'Fund your wallet using your debit card',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AppDropdown(
              text2: '',
              text: 'Select Wallet',
              hintText: 'Choose the wallet you want to fund.',
              icon: Icons.keyboard_arrow_down,
              value: _wallettype,
              onChanged: (value) {
                setState(() {
                  _wallettype = value as String?;
                  selectedIndex = wallettypes!.indexOf(value!);
                });
              },
              items: wallettypes!.map((val) {
                return DropdownMenuItem<String>(
                  value: val,
                  child: Text(val,
                      style:
                          const TextStyle(fontSize: 16, color: Colors.black)),
                );
              }).toList(),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Wallet not selected';
                } else {
                  return null;
                }
              },
            ),
            const SizedBox(
              height: 31,
            ),
            addmoneyCard(
                img: 'assets/images/mastercard.png',
                imgg: 'assets/images/visa.png',
                title: 'Debit Card'),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                // margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(),
                child: Card(
                    elevation: 0.1,
                    child: ListTile(
                      tileColor: const Color(0xffF8F7FA),
                      // minLeadingWidth:5,
                      // minVerticalPadding:12,

                      leading: Image.asset('assets/images/mastercard.png'),

                      title: Text(
                        '5553******9187',
                        style: TextStyle(
                            color: AppColor.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.grey,
                        size: 20,
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  addmoneyCard({String? title, img, imgg, ontap}) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(color: Color(0xffF8F7FA)),
        child: Card(
            elevation: 0.1,
            child: ListTile(
              tileColor: const Color(0xffF8F7FA),
              leading: Image.asset('$img'),
              title: Row(
                children: [
                  Image.asset(
                    '$imgg',
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '$title',
                    style: TextStyle(
                        color: AppColor.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: AppColor.grey,
                size: 20,
              ),
            )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();

    wallettypes = [
      'Dollar Wallet(\$413.19)',
      'Naira Wallet(N17,000)',
    ];
  }
}
