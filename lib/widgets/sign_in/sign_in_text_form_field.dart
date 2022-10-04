import 'package:flutter/material.dart';

import '../../constents/text_style.dart';

class SignInTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;

  const SignInTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var theme = Theme.of(context);

    return TextFormField(
      style: TextStyle(
          color: brightness == Brightness.dark ? theme.primaryColorDark : null),
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(15),
        hintText: hintText,
        hintStyle: k15TextStyle.copyWith(color: theme.hintColor),
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: brightness == Brightness.light
                ? Colors.grey.shade300
                : Colors.grey.shade800,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: brightness == Brightness.light
                ? Colors.grey.shade300
                : Colors.grey.shade800,
          ),
        ),
        filled: true,
        fillColor: brightness == Brightness.light
            ? Colors.grey.shade100
            : Colors.grey.shade800,
      ),
      maxLines: 1,
    );
  }
}
