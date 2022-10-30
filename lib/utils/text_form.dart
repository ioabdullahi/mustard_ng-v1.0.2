import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mustard_ng/utils/app_color.dart';

class AppTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final String? Function(String?)? validator, onChanged;
  final Widget? icon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? secure;
  final IconData? suffixIcon;
  final String? hintText, initialValue;

  const AppTextFormField(
      {Key? key,
      required this.controller,
      required this.validator,
      this.icon,
      this.keyboardType,
      this.secure,
      this.hintText,
      this.suffixIcon,
      this.onChanged,
      this.textInputAction,
      this.textCapitalization,
      this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        TextFormField(
          cursorColor: AppColor.maincolor,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp("[a-zA-Z0-9 space _ / . @]")),
          ],
          validator: validator,
          initialValue: initialValue,
          onChanged: onChanged,
          obscureText: secure ?? false,
          // obscuringCharacter: '◉',
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            isDense: true,
            suffixIcon: icon ?? Icon(suffixIcon, color: Colors.grey),
            contentPadding:
                const EdgeInsets.only(left: 10.0, right: 0.0, top: 12),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.maincolor)),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColor.maincolor), borderRadius: const BorderRadius.all(Radius.circular(5))),
          ),
        ),
      ],
    );
  }
}



class AppTextFormFieldFilled extends StatelessWidget {
  final TextEditingController? controller;
  final TextCapitalization? textCapitalization;
  final String? Function(String?)? validator, onChanged;
  final Widget? icon;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool? secure;
  final IconData? suffixIcon;
  final String? hintText, initialValue, title, text2;

  const AppTextFormFieldFilled(
      {Key? key,
      required this.controller,
      required this.validator,
      this.icon,
      this.text2,
      this.keyboardType,
      this.secure,
      this.hintText,
      this.suffixIcon,
      this.onChanged,
      this.title,
      this.textInputAction,
      this.textCapitalization,
      this.initialValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$title', style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12 ),),
          Text('$text2')],
        ),
        const SizedBox(height: 10),
        TextFormField(
          cursorColor: AppColor.maincolor,
          keyboardType: keyboardType,
          textInputAction: textInputAction,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          inputFormatters: [
            FilteringTextInputFormatter.allow(
                RegExp("[a-zA-Z0-9 space _ / . @]")),
          ],
          validator: validator,
          initialValue: initialValue,
          onChanged: onChanged,
          obscureText: secure ?? false,
          // obscuringCharacter: '◉',
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            fillColor: AppColor.maincolor20,
            filled: true,
            isDense: true,
            suffixIcon: icon ?? Icon(suffixIcon, color: Colors.grey),
            contentPadding:
                const EdgeInsets.only(left: 10.0, right: 0.0, top: 12),
            hintText: hintText,
            hintStyle:TextStyle(fontSize: 16, color: AppColor.grey, fontWeight: FontWeight.w400),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
      ],
    );
  }
}


class AppDropdown extends StatelessWidget {
  final IconData? icon;
  final String? Function(String?)? validator;
  final void Function(Object?)? onChanged;
  final String? value, hintText, text, text2;
  final List<DropdownMenuItem<String>>? items;

  const AppDropdown({
    Key? key,
    this.validator,
  this.text, this.text2,
    this.icon,
    required this.value,
    required this.hintText,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, bottom: 3.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$text',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff525252),
                ),
              ),
              Text(
                '$text2',
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color(0xff525252),
                ),
              ),

            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: DropdownButtonFormField<String>(
            decoration: InputDecoration(
             
              hintText: hintText,
                fillColor: AppColor.maincolor20,
            filled: true,
            hintStyle:TextStyle(fontSize: 14, color: AppColor.grey, fontWeight: FontWeight.w400),
              contentPadding: const EdgeInsets.fromLTRB(14, 16, 10, 5),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent)),
                enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent), borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
            icon: Icon(icon, color: AppColor.black),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            isExpanded: true,
            value: value,
            onChanged: onChanged,
            items: items,
            validator: validator,
          ),
        ),
      ],
    );
  }
}


