import 'package:flutter/material.dart';
import 'package:petratest/screens/auth/auth_page.dart';
import 'package:petratest/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Ingreso correctamente ' + user.email!),
            MaterialButton(
                onPressed: FirebaseAuth.instance.signOut,
                color: Colors.deepPurple,
                child: Text('sign out'),
            )
          ],
        )
      )
    );
  }
}