import 'package:flutter/foundation.dart';

class AuthCredentialsCheckProvider with ChangeNotifier {
  String emailMessage = "";
  String passwordMessage = "";
  bool isEmailErrol = false;
  bool isPassErrol = false;

  /// Validates the email format and updates the email message.
  void isValidEmail(String email) {
    final emailRegex = RegExp(
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'); // Email pattern
    if (emailRegex.hasMatch(email)) {
      isEmailErrol = false;
      notifyListeners();
    } else {
      emailMessage = "Invalid email address";
      isEmailErrol = true;
      notifyListeners();
    }
  }

  /// Validates the password length and presence of at least one special character.
  void isValidPassword(String password) {
    final passwordRegex = RegExp(r'^(?=.*?[!@#\$&*~]).{8,}$');
    if (password.length < 8) {
      passwordMessage = "Password must be at least 8 characters long";
      isPassErrol = true;
      notifyListeners();
    } else {
      if (passwordRegex.hasMatch(password)) {
        passwordMessage = "";
        isPassErrol = false;
        notifyListeners();
      } else {
        passwordMessage =
            "Password must be contain at least one special character";
        isPassErrol = true;
        notifyListeners();
      }
    }
  }
}
