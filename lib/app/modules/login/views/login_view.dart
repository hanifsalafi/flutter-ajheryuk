// ignore_for_file: prefer_const_constructors

import 'package:ajheryuk/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            Container(
              height: 140,
              child: Image.asset(
                "assets/images/ajheryuk-logo-only.png",
                fit: BoxFit.contain,
              ),
            ),
            TextField(
              cursorColor: Colors.grey.shade500,
              decoration: InputDecoration(
                label: Text(
                  "Email",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                fillColor: Colors.grey.shade100,
                filled: true,
                border: InputBorder.none,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: Colors.grey.shade500,
              obscureText: true,
              decoration: InputDecoration(
                  label: Text(
                    "Password",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  fillColor: Colors.grey.shade100,
                  filled: true,
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.grey.shade500,
                    ),
                  )),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () => Get.offAllNamed(Routes.HOME),
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEC5F5F),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              child: Text("Forgot Password?"),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey.shade400,
                )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "or",
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  height: 1,
                  color: Colors.grey.shade400,
                )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/fb-icon.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Log in with Facebook"),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0082CD),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: Get.width,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/google-icon.png"),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Log in with Google",
                      style: TextStyle(color: Colors.black87),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey.shade200,
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey.shade500),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("Sign Up"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
