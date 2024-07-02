import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:modernlogintute/pages/login_page.dart';

import 'pages/home_page.dart';
import 'pages/login_or_register_page.dart';

class auth_page extends StatelessWidget {
  const auth_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user logged in
          if (snapshot.hasData) {
            return HomePage();
          }

          //user not logged in
          else {
            return LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
