import 'package:flutter/material.dart';
import 'package:lec_attendance_system/provider/authentication.dart';

class LoginScreen extends StatelessWidget {

  InputDecoration _decoration(String hint,Icon icon,  ){
    return InputDecoration(
        hintText: hint,
        isDense: true,
        prefixIcon: icon,
        border: OutlineInputBorder(gapPadding: 3, borderRadius: BorderRadius.circular(30))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Login Screen !"),
        TextButton(onPressed: ()=>AuthService().signInWithGoogle(), child: Text("Login Now")),
        Card(child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 7),
          child: Column(children: [
            TextFormField(
              decoration: _decoration('Email',Icon(Icons.email)),),
            SizedBox(height: 9),
            TextFormField(
              obscureText: true,
              decoration: _decoration('Password',Icon(Icons.lock)),),
            SizedBox(height: 9),
            OutlinedButton(
                onPressed: (){}, child: Text("Sign Up"))
          ],),
        ),),
      ],
    ),);
  }
}
