import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_4/home_page.dart';
//import 'package:flutter_task_4/home_page.dart';
import 'package:flutter_task_4/signin.dart';
import 'package:fontresoft/fontresoft.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';
//import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(
        
        package: FontResoft.package,
        fontFamily: FontResoft.poppins,
        
      
      ),
      title: 'Store App',
      debugShowCheckedModeBanner: false,
      home: const SingIn(),
      //home: FirebaseAuth.instance.currentUser == null ? const SingIn() : const HomePage(),
    );
  }
}   

