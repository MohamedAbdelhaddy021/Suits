import 'package:flutter/material.dart';

mixin ValidationMixin<T extends StatefulWidget> on State<T> {
  String? validateUserNameOrEmail(String? email) {
    if (email == null || email.trim().isEmpty) {
      return 'Enter your email ';
    } else if (!email.contains('@')) {
      return 'Invalid Email';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password!.trim().isEmpty) {
      return 'Password is required';
    } else if (password.length < 8) {
      return 'Password is less than 8 Chars';
    }
    return null;
  }
}
