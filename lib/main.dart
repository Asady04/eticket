import 'package:flutter/material.dart';
import 'package:eticket/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                child: Text('Sign Up'),
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                    'fayyadh.asady04@gmail.com', 
                    'iyajugasih', 
                    'Fayyadh', 
                    ['Action','SuperPower','Gore'], 
                    'Indonesia');
                }
              )
            ],
          ),
        )
      )
    );
  }
}
