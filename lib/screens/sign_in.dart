import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/constents/width_sized_box.dart';

import '../constents/height_sized_box.dart';
import '../constents/text_style.dart';
import '../widgets/sign_in/sign_in_text_button.dart';
import '../widgets/sign_in/sign_in_text_form_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String _username = "";
  String _password = "";
  bool _visible = false;
  @override
  Widget build(BuildContext context) {
    var brightness = MediaQuery.of(context).platformBrightness;
    var theme = Theme.of(context);
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              onPressed: () {},
              child: Text(
                'English (India)',
                style: k15TextStyle.copyWith(color: theme.primaryColorLight),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/insta_logo.png',
                      width: size.width / 2,
                    ),
                    kH15SizedBox,
                    SignInTextFormField(
                      hintText: 'Phone number, email or username',
                      onChanged: (value) {
                        setState(() {
                          _username = value;
                        });
                      },
                    ),
                    kH15SizedBox,
                    SignInTextFormField(
                      hintText: 'Password',
                      obscureText: !_visible,
                      suffixIcon: IconButton(
                        splashColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            _visible = !_visible;
                          });
                        },
                        icon: Icon(
                          _visible
                              ? CupertinoIcons.eye_fill
                              : CupertinoIcons.eye_slash_fill,
                          color:
                              _visible ? theme.primaryColor : theme.hintColor,
                        ),
                      ),
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                      },
                    ),
                    kH15SizedBox,
                    ElevatedButton(
                      onPressed: (_username.isEmpty || _password.isEmpty)
                          ? null
                          : () {},
                      style: ButtonStyle(
                        backgroundColor:
                            (_username.isEmpty || _password.isEmpty)
                                ? MaterialStateProperty.all(theme.disabledColor)
                                : MaterialStateProperty.all(theme.primaryColor),
                        minimumSize: MaterialStateProperty.all(
                          const Size.fromHeight(50),
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        elevation: MaterialStateProperty.all(0),
                      ),
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: (_username.isEmpty || _password.isEmpty)
                              ? brightness == Brightness.light
                                  ? Colors.white
                                  : theme.primaryColorLight
                              : null,
                        ),
                      ),
                    ),
                    const SignInTextButton(
                      text1: 'Forgot your login details? ',
                      text2: 'Get help logging in.',
                    ),
                    kH5SizedBox,
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: brightness == Brightness.dark
                                ? Colors.grey.shade900
                                : null,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: theme.primaryColorLight,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: brightness == Brightness.dark
                                ? Colors.grey.shade900
                                : null,
                          ),
                        ),
                      ],
                    ),
                    kH15SizedBox,
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.facebook),
                          k5WSizedBox,
                          Text(
                            'Log in with Facebook',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color:
                  brightness == Brightness.dark ? Colors.grey.shade900 : null,
            ),
            const SignInTextButton(
              text1: "Don't have an account? ",
              text2: 'Sign up.',
            ),
          ],
        ),
      ),
    );
  }
}
