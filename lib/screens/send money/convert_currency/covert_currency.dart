import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/text_form.dart';

class ConvertCurrency extends StatefulWidget {
   final String email;
  const ConvertCurrency({Key? key,  required this.email,}) : super(key: key);

  @override
  State<ConvertCurrency> createState() => _ConvertCurrencyState();
}

class _ConvertCurrencyState extends State<ConvertCurrency> {
  String? _currencytype;
  int? selectedIndex;
   List<String>? currencytypes;
   TextEditingController? _email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert Currency'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(height: 10,),
            const Align(
              child: Text(
                'Convert from your Naira to Dollar or Dollar to Naira.',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(height: 50,),
           
            AppDropdown(
                  text: 'Conversion Type', text2: '1\$/N700',
                  hintText: 'Naira to Dollar',
                  icon: Icons.keyboard_arrow_down,
                  value: _currencytype,
                  onChanged: (value) {
                    setState(() {
                      _currencytype = value as String?;
                      selectedIndex = currencytypes!.indexOf(value!);
                    });
                  },
                  items: currencytypes!.map((val) {
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
                const SizedBox(height: 40,),
                 Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Amount'), Text('Balance(N24,000)')],),
                 AppTextFormFieldFilled(
                title: '',
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
          ],
        ),
      ),
    );
  }
   @override
  void initState() {
    super.initState();

    //_email = TextEditingController();

    currencytypes = [
      'Dollar to Naira',
      'Naira to Dollar',
    ];
  }

  @override
  void dispose() {
    //_email!.dispose();

    super.dispose();
  }
}
