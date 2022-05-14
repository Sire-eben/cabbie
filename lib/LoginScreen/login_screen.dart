import 'package:flutter/material.dart';
import 'package:naija_cabbie/Global/global.dart';
import 'package:naija_cabbie/HomeScreen/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(16),
          color: Colors.white,
          height: screenSize.height,
          width: screenSize.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome back, David",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            "assets/images/elizeu-dias-2EGNqazbAMk-unsplash.jpg"))),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Enter your login password",
                style: TextStyle(fontSize: 14, color: Color(0xff8593AD)),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    hintText: "Enter password",
                    hintStyle: TextStyle(color: Colors.grey.shade300),
                    labelText: "Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding: const EdgeInsets.all(22),
                    border: OutlineInputBorder(
                        gapPadding: 8,
                        borderRadius: BorderRadius.circular(24),
                        borderSide: const BorderSide(color: Color(0xfffafafa))),
                    filled: true,
                    fillColor: const Color(0xfffafafa)),
              ),
              GestureDetector(
                onTap: () {
                  if (passwordController.text.isNotEmpty) {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => const HomeScreen()));
                  } else {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return  AlertDialog(
                          title: Text("Empty password"),
                          content: Text("Password field cannot be empty"),
                          actions: [
                            TextButton(
                              child: Text("OK"),
                              onPressed: () {Navigator.pop(context);},
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(24)),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w800),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
