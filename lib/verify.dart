import 'package:flutter/material.dart';
import 'package:flutter_task_4/controller/auth_cont.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
//import 'auth_cont.dart'; // Ensure this import points to your AuthController file

class Verify extends StatefulWidget {
  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  var authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text('Verify Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.currentUser!.sendEmailVerification();
                authController.verifyEmail();
              },
              child: FirebaseAuth.instance.currentUser!.emailVerified
                ? const Text('Email Verified')
                : const Text('Resend Email'),
            ),
            const SizedBox(height: 20),
            FirebaseAuth.instance.currentUser!.emailVerified
                ? const Text(
                    'Your email is verified. You can now proceed.',
                    style: TextStyle(color: Colors.green),
                  )
                : const Text(
                    'A verification email has been sent to your email address. Please verify your email address to continue.',
                    style: TextStyle(color: Colors.red),
                  ),
          ],
        ),
      ),
    );
  }
}