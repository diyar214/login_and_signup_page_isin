import 'package:flutter/material.dart';

import './components/signup_body.dart';
import '../../widgets/constants.dart';
import '../../widgets/app_bar.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: buildAppBar(context),
      backgroundColor: scaffoldColor,
      body: const SignUpBody(),
    );
  }
}
