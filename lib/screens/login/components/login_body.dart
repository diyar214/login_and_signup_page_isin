import 'package:flutter/material.dart';

import './login_title.dart';
import './login_card.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 20.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              LogInTitle(),
              SizedBox(height: 30),
              LogInCard(),
            ],
          ),
        ),
      ),
    );
  }
}
