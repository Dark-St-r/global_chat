import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:global_chat/pages/dashboard_screen.dart';

class LoginController {
  static Future<void> loginAccount(
      {required BuildContext context,
      required String emailController,
      required String passwordController}) async {
    // Create account
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    )
        .then((value) {
      // Account login
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const DashboardScreen();
      }), (route) {
        return false;
      });
    }).catchError((e) {
      // Error logging into account
      SnackBar messageSnackBar = SnackBar(
          backgroundColor: Colors.red[900],
          content: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
      ScaffoldMessenger.of(context).showSnackBar(messageSnackBar);
    });
  }
}
