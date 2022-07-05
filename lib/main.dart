import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginWidget(),
  ));
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'C@nnect',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),

            const SizedBox( height: 70.0 ),

            const Text(
              'Email or Phone Number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0
              ),
            ),

            const SizedBox( height: 10.0),

            const SizedBox( height: 30.0 ),

            const Text(
              'Password',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0
              ),
            ),

            Row(),
          ],
      )
    );
  }
}
