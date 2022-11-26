// ignore: implementation_imports
// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../forgot_password/forgot_password_layout.dart';
import '../../home/home_screen.dart';
import '../../signup/signup_screen.dart';
import '../../../widgets/already_have_an_account.dart';
import '../../../widgets/bordered_container.dart';
import '../../../widgets/text_form_field.dart';
import '../../../widgets/extension.dart';
import '../../../widgets/constants.dart';

class LogInCard extends StatefulWidget {
  const LogInCard({super.key});

  @override
  State<LogInCard> createState() => _LogInCardState();
}

class _LogInCardState extends State<LogInCard> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Login',
              style: GoogleFonts.cairo(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: primryColor,
              ),
            ),
          ),
          MyTextFormField(
            label: const Text('Email'),
            keyboardType: TextInputType.emailAddress,
            obscureText: false,
            textInputAction: TextInputAction.next,
            validator: (value){
              if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return "Please enter a valid email address";
                }
                return null;
            }
          ),
          MyTextFormField(
            label: const Text('Password'),
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            index: 1,
            validator: (value) {
                if (value!.isEmpty || value.isValidPassword) return 'Enter a valid password';
              }
          ),
          const SizedBox(height: 8),
          const ForgotPasswordLayot(),
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: GestureDetector(
              onTap: () {
                if (_formKey.currentState!.validate()){
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                    (route) => false);
                }
              },
              child: BorderedContainer(
                color: primryColor,
                child: Text(
                  'Login',
                  style: GoogleFonts.cairo(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: sconderyColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
