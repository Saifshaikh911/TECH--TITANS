import 'package:flutter/material.dart';
import 'package:bookmyevent/components/my_button.dart';
import 'package:bookmyevent/components/my_textfield.dart';
import 'package:bookmyevent/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controllers
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Image.asset(
                  'assets/login.jpg',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 30),

                Text(
                    'Login now and discover the corporate world!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),

                ),

                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 50),
                    Text(
                        'Your phone number',
                      style: TextStyle(color: Colors.grey[100]),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                // username textfield
                MyTextField(
                  controller: usernameController,
                  hintText: '',
                  obscureText: false,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(width: 50),
                    Text(
                        'Password',
                      style: TextStyle(color: Colors.grey[100]),
                    ),

                  ],
                ),

                const SizedBox(height: 5),

                // password textfield
                MyTextField(

                  controller: passwordController,
                  hintText: '',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            color: Colors.pink[900],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // sign in button
                MyButton(
                  onTap: signUserIn,
                ),

                const SizedBox(height: 20),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 50),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),



                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    // google button
                    Image.asset(
                      'assets/google.jpg',
                      width: 30,
                      height: 30,
                    ),

                    SizedBox(width: 100),

                    // apple button
                    Image.asset(
                      'assets/facebook.jpg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a member?',
                      style: TextStyle(color: Colors.grey[200]),
                    ),
                    const SizedBox(width: 4),
                     Text(
                      'Register now',
                      style: TextStyle(
                        color: Colors.pink[800],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}