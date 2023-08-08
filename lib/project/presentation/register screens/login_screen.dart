import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBEDEA),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            // main logo
            Image.asset(
              'assets/images/logo mock.png',
              height: 227,
              width: 500,
            ),
            // textfields
            TextFieldWidget(
              hinText: 'Email',
              controller: emailController,
            ),
            const SizedBox(
              height: 45,
            ),
            TextFieldWidget(
              hinText: 'Password',
              controller: passwordController,
            ),
            const SizedBox(
              height: 25,
            ),
            // forgot password button
            TextButton(
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ),
              onPressed: () {},
            ),
            const SizedBox(
              height: 25,
            ),
            // sign in button
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 110, vertical: 14),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffFF785B)),
              child: const Text(
                'Sign In',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            // description Sign in with
            const Text(
              'Sign in with',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 55,
            ),
            //login with facebook and google
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/facebook.png'),
                    radius: 15,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {},
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/google.jpg'),
                    radius: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 119,
            ),
            //Sign up button
            InkWell(
              onTap: () {},
              child: Container(
                width: 360,
                height: 63,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                  color: Color(0xffFF785B),
                ),
                child: const Column(
                  children: [
                    Text(
                      '^',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  TextFieldWidget({super.key, this.controller, this.hinText});
  TextEditingController? controller;
  String? hinText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          hintText: hinText,
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffFF785B), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffffffff), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xffFF785B), width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
        ),
      ),
    );
  }
}
