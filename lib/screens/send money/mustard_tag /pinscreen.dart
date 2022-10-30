import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';
import 'package:pinput/pinput.dart';

class InputPin extends StatefulWidget {
  const InputPin({Key? key}) : super(key: key);

  @override
  State<InputPin> createState() => _InputPinState();
}

class _InputPinState extends State<InputPin> {TextEditingController? _pinPutController;
  final FocusNode _pinPutFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Text(
              'Input PIN',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
            ),
             Align(
              child: Pinput(
                defaultPinTheme: PinTheme( width:40,
                  height:40,
                  decoration: BoxDecoration(color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: AppColor.maincolor),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width:40,
                  height:40,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(5)),
                    border: Border.all(color: AppColor.maincolor),
                  ),
                ),
                length: 6,
                // fieldsCount: 6,
                autofocus: true,
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedPinTheme: PinTheme(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value) async {
                  if (value.length == 6) {}
                },
              ),
            ),
            
            const SizedBox(
              height: 350,
            ),
            Button(
                text: 'COMPLETE',
                onPressed: () {
                  Navigator.pushNamed(context, '/transfersuccessful');
                })
          ],
        ),
      ),
    );
  }
}
