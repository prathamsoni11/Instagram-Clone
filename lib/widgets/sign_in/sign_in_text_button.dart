import 'package:flutter/material.dart';

import '../../constents/text_style.dart';

class SignInTextButton extends StatelessWidget {
  const SignInTextButton({
    Key? key,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  final String text1;
  final String text2;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return TextButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: k12TextStyle.copyWith(
              color: theme.primaryColorLight,
            ),
          ),
          Text(
            text2,
            style: k12TextStyle.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.primaryColorDark,
            ),
          ),
        ],
      ),
    );
  }
}
