import 'package:flutter/material.dart';
import 'package:login_page_task/widgets/constants.dart';

import 'components/login_body.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: const LogInBody(),
    );
  }
}
