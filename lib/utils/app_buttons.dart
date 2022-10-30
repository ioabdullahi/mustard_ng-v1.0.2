import 'package:flutter/material.dart';
import 'package:mustard_ng/utils/app_color.dart';

class ButtonS extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ButtonS({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: MaterialButton(
        elevation: 0,
        height: 74,
        minWidth: 10,
        color: AppColor.maincolor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}
class Button extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const Button({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 48,
      child: MaterialButton(
        elevation: 0,
        height: 74,
        minWidth: 10,
        color: AppColor.maincolor,
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          text,
          style: const TextStyle(
            color: Color(0xffffffff),
            fontFamily: 'Lato',
          ),
        ),
      ),
    );
  }
}

class ButtonSO extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const ButtonSO({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 60,
      child: OutlinedButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              BorderSide(color: AppColor.maincolor, width: 1.0)),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: AppColor.maincolor,
          ),
        ),
      ),
    );
  }
}
