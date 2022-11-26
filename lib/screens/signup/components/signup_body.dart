import 'package:flutter/material.dart';

import './signup_title.dart';
import './signup_card.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0 ,horizontal: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SignUpTitle(),
            SizedBox(height: 30),
            SignUpCard(),
          ],
        ),
      ),
    );
  }
}
