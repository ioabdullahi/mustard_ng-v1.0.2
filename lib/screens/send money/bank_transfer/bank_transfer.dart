import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:mustard_ng/utils/text_form.dart';
class SendMoneyBankTransfer extends StatefulWidget {
  final String email;
  const SendMoneyBankTransfer({
    Key? key,
    required this.email,
  }) : super(key: key);

  @override
  State<SendMoneyBankTransfer> createState() => _SendMoneyBankTransferState();
}

class _SendMoneyBankTransferState extends State<SendMoneyBankTransfer> {
  String? _wallettype;
  int? selectedIndex;
  List<String>? wallettypes;
  TextEditingController? _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: Colors.white,
        foregroundColor: AppColor.maincolor,
        title: Text(
          'Bank Transfer',
          style: TextStyle(
              color: AppColor.black, fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                child: Text(
                  'Send money to another Mustard.mg user wallet',
                  style: TextStyle(fontSize: 10, color: AppColor.black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.lock_clock_outlined,
                    color: AppColor.maincolor,
                    size: 18,
                  ),
                  Text(
                    'Recipients',
                    style: TextStyle(fontSize: 10, color: AppColor.black),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 90,
                width: MediaQuery.of(context).size.width,
                //color: Colors.red,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: AppColor.lightgrey,
                          child: Icon(
                            Icons.person_outline,
                            color: AppColor.maincolor,
                          ),
                        ),
                        Text(
                          'Beneficiaries',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 10, color: AppColor.black),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 90,
                      width: 280,
                      child: ListView.builder(
                          itemCount: 100,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return beneficiaries(
                                name: 'Taiwo Jam..', initial: 'TJ', tag: 'MN56');
                          }),
                    ),
                  ],
                ),
              ),
              AppDropdown(text2: '',
                text: 'Select Wallet',
                hintText: 'Choose the wallet you want to send from',
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
              const SizedBox(height: 15),
              AppTextFormFieldFilled(
                text2: '',
                title: 'Amount',
                controller: _email,
                hintText: '0.00',
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
              const SizedBox(height: 15),
               AppDropdown(
                text2: '',
                text: 'Select Bank',
                hintText: 'e.g Access Bank',
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
              const SizedBox(height: 15),
              AppTextFormFieldFilled(
                text2: '',
                title: 'Add Note',
                controller: _email,
                hintText: 'Description',
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
                height: 20,
              ),
              Button(
                  text: 'PROCEED',
                  onPressed: () {
                    Navigator.pushNamed(context, '/transfersummarytag');
                  })
            ]),
      ),
    );
  }

  beneficiaries({String? name, initial, tag}) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: (Column(
        children: [
          CircleAvatar(
              foregroundColor: AppColor.black,
              radius: 15,
              backgroundColor: AppColor.lightgrey,
              child: Text(
                '$initial',
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
              )),
          Text(
            '$name',
            style: TextStyle(
              fontSize: 12,
              color: AppColor.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            '$tag',
            style: TextStyle(
                fontSize: 10,
                color: AppColor.black,
                fontWeight: FontWeight.w400),
          )
        ],
      )),
    );
    // return beneficiaries(
    //     name: 'Nonsa', initial: 'N N', tag: 'MN56');
  }

  @override
  void initState() {
    super.initState();

    _email = TextEditingController();

    wallettypes = [
      'Dollar Wallet(\$413.19)',
      'Naira Wallet(N17,000)',
    ];
  }

  @override
  void dispose() {
    _email!.dispose();

    super.dispose();
  }
}
