import 'package:flutter/material.dart';
import 'package:help_mom_3/components/my_textfield.dart';
import 'package:help_mom_3/components/my_button.dart';
import 'package:help_mom_3/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  LoginPage(
      {super.key, required Color backgroundColor, required AppBar appbar});

  final emailConrtoller = TextEditingController();
  final passwordController = TextEditingController();

  //sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(
              height: 50,
            ),

            //logo
            // const Icon(Icons.lock, size: 100),
            Image.asset(
              'lib/images/favicon.png',
              width: 100, // Set the desired width
              height: 100, // Set the desired height
            ),

            const SizedBox(height: 50),

            //welcome message
            Text('Welcolme Back!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                )),

            const SizedBox(
              height: 25,
            ),

            //username textfield
            MyTextField(
              controller: emailConrtoller,
              hintText: 'Email',
              obsecuredText: false,
            ),
            const SizedBox(
              height: 25,
            ),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obsecuredText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            //forgot password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //sign in button
            MyButton(
              onTap: signUserIn,
            ),
            const SizedBox(height: 25),
            //or continue with
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey[400],
                  )),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      )),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            //google sign in button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                const SquareTile(imagePath: 'lib/images/google.png'),
                const SizedBox(width: 35),
              ],
            ),

            const SizedBox(width: 25),
            //not a member ? register now
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'Not a Member?',
                style: TextStyle(color: Colors.grey[700]),
              ),
              const SizedBox(width: 20),
              const Text(
                'Register Now',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )
            ])
          ]),
        ),
      ),
    );
  }
}
