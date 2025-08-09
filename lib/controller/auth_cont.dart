import 'package:firebase_auth/firebase_auth.dart';
//import 'package:flutter/material.dart';
import 'package:flutter_task_4/home_page.dart';
import 'package:flutter_task_4/verify.dart';
import 'package:get/get.dart';


class AuthController extends GetxController {


  void signup(String email, String password) async{
    //print('🚀🚀🚀🚀');
    try {
    final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: email,
    password: password,
  );
      Get.to(Verify());
      //print(credential);
      // Get.snackbar('Account created', 'Account created successfully',
      //     snackPosition: SnackPosition.BOTTOM);
      
    }
    on FirebaseAuthException catch (e) {
      if(e.code == 'weak-password'){
        Get.snackbar('Error creating account', 'The password provided is too weak.',
          snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'email-already-in-use'){
        Get.snackbar('Error creating account', 'The account already exists for that email.',
          snackPosition: SnackPosition.BOTTOM);
        
      }
      else{
        print(e.code);
      }
    
    }
     catch (e) {
      Get.snackbar('Error creating account', e.toString(),
          snackPosition: SnackPosition.BOTTOM);
      print('🚀🚀🚀🚀');
    }
  }

  Future <void> signin(String email, String password) async {
    try {
       await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Sign in', 'Sign in successfully',
          snackPosition: SnackPosition.TOP);
      Get.to(() => const HomePage());
    }
     on FirebaseAuthException catch (e) {
      if (e.code == 'invalid-credential') {
        print('No user found for that email.');
        Get.snackbar('No user found for that email.', "");
      } 
      print(e.code);
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.snackbar('Error', "No user found for that email.",
         snackPosition: SnackPosition.TOP);
      }
      if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.snackbar('Error', 'Wrong password provided for that user.',
            snackPosition: SnackPosition.TOP);
      }
      else{
        print(e.code);
      }
      
    }
      
    catch (e){
      print(e);
    }
  }

   Future<void> verifyEmail() async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      await user!.sendEmailVerification();
      user = FirebaseAuth.instance.currentUser;

      if (user != null && user.emailVerified) {
        Get.snackbar('Email Verification', 'Your email is verified.',
            snackPosition: SnackPosition.TOP);
            Get.to(() => const HomePage());
      } else {
        Get.snackbar('Email Verification', 'Email not verified yet.',
            snackPosition: SnackPosition.TOP);
      }
    } catch (e) {
      Get.snackbar('Error', 'An error occurred: $e',
          snackPosition: SnackPosition.TOP);
    }
  }
  void signout() async {
    await FirebaseAuth.instance.signOut();
    Get.snackbar('Sign out', 'Sign out successfully',
          snackPosition: SnackPosition.TOP);
    Get.to(() => const HomePage());
  }
}