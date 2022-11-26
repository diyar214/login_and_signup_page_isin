// ignore_for_file: unnecessary_null_comparison

extension ExtString on String {
  // bool get isValidEmail {
  //   final emailRegExp = RegExp(r"\S+@\S+\.\S+");
  //   return emailRegExp.hasMatch(thisPP);
  // }

  bool get isValidName {
    final nameRegExp = RegExp(r"^[a-zA-Z0-9]$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
    return passwordRegExp.hasMatch(this);
  }

  // bool get isNotNull {
  //   return this != null;
  // }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^(?:[+0]9)?[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }
}
