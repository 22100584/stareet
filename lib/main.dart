import 'package:flutter/material.dart';
import 'package:stareet/login.dart';
import 'package:stareet/mypage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:stareet/signup.dart';
import 'package:stareet/utils/info.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: const Color.fromRGBO(54, 209, 0, 1)),
      initialRoute: '/login',
      routes: {
        '/signup': (BuildContext context) => const SignupPage(),
        '/login': (BuildContext context) => const LoginPage(),
        '/mypage':(BuildContext context) => const MyPage(),
      },
    ); }
}