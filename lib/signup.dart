import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_4/controller/auth_cont.dart';
import 'package:flutter_task_4/home_page.dart';
import 'package:flutter_task_4/verify.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  var key = GlobalKey<FormState>();  
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
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
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: key,
          child: Column(
            children: [
              TextFormField(
                controller: emailController,

                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
                validator:(value){
                  if(!GetUtils.isEmail(value?? '')){
                    return 'Please enter your email';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
               TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                validator: (value){
                  if(!GetUtils.isLengthGreaterOrEqual(value?? '', 6)){
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
               TextFormField(
                controller: confirmPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Confirm Password',
                ),
                validator: (value){
                  if(!GetUtils.isLengthGreaterOrEqual(value?? '', 6) && value != passwordController.text){
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if(key.currentState!.validate()){
                    var email = emailController.text;
                    var password = passwordController.text;
                    //var _confirmPassword = confirmPassword.text;
                    authController.signup(email, password);
                    FirebaseAuth.instance.currentUser!.emailVerified ? Get.to(const HomePage()) : Get.to(Verify()); 
                  }
                },
                child: const Text('Sign Up'),
              ),



              
              TextButton(onPressed: Get.back
              , child: const Text('Already have an account? Sign In'))
            ],
          ),
        ),
      ),
    );
  }
}