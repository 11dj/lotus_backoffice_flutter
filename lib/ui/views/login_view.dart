import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    // ThemeData _styles = Theme.of(context);
    bool isScreenWide = MediaQuery.of(context).size.width >= 767;

    return Scaffold(
        // backgroundColor: _styles.backgroundColor,
        body: Flex(
      direction: isScreenWide ? Axis.horizontal : Axis.vertical,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(child: Text('Hrl1')),
        Center(child: Text('Hr2')),
      ],
    ));
  }
}
