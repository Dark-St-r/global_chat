import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:global_chat/pages/dashboard_screen.dart';

class SignupController {
  static Future<void> createAccount(
      {required BuildContext context,
      required String emailController,
      required String passwordController,
      required String nameController,
      required String countryController}) async {
    // Create account
    await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: emailController,
      password: passwordController,
    )
        .then((value) {
      // Account created
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) {
        return const DashboardScreen();
      }), (route) {
        return false;
      });
    }).catchError((e) {
      // Error creating account
      SnackBar messageSnackBar = SnackBar(
          backgroundColor: Colors.red[900],
          content: Text(
            e.toString(),
            style: const TextStyle(color: Colors.white),
          ));
      ScaffoldMessenger.of(context).showSnackBar(messageSnackBar);
    });

    var userId = FirebaseAuth.instance.currentUser!.uid;
    var db = FirebaseFirestore.instance;
    Map<String, dynamic> data = {
      "name": nameController,
      "country": countryController,
      "email": emailController,
      "userId": userId.toString(),
    };
    await db.collection("users").doc(userId).set(data).then((value) {
      print("User data added");
    }).catchError((e) {
      print(e);
    });
  }
}
