import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:logistics/controller/login.dart';
import 'package:logistics/view/screenhome.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final logincontroller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          const SizedBox(height: 40),
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/img01.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Form(
            key: logincontroller.formkey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty";
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'please Enter Valid email';
                    }
                    return null;
                  },
                  controller: logincontroller.emailController,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    prefixIcon: Icon(Icons.person),
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Empty";
                    }

                    return null;
                  },
                  controller: logincontroller.passwordController,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    prefixIcon: Icon(Icons.lock),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 10, top: 8, bottom: 8),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 6, 26),
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // <-- Radius
                  ),
                ),
                onPressed: () {
                  logincontroller.login();
                },
                child: const Text('Login')),
          ),
        ],
      ),
    ));
  }
}
