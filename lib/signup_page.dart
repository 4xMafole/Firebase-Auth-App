import 'package:firebase_auth_getx/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //varibles
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    List altSign = [
      "g.png",
      "t.png",
      "f.png",
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/signup.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: h * 0.14,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.white70,
                  backgroundImage: AssetImage(
                    "assets/img/profile1.png",
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            width: w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter email address",
                      prefixIcon:
                          Icon(Icons.email, color: Colors.deepOrangeAccent),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 7,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter password ",
                      prefixIcon: Icon(Icons.password_outlined,
                          color: Colors.deepOrangeAccent),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 1.0,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: w * 0.5,
            height: h * 0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                image: AssetImage("assets/img/loginbtn.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                "Sign Up",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RichText(
            text: TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () => Get.to(() => LoginPage()),
              text: "Have an account?",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: w * 0.1,
          ),
          RichText(
            text: TextSpan(
              text: "Other sign up methods",
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 16,
              ),
            ),
          ),
          Wrap(
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor:
                      Colors.orangeAccent.shade700.withOpacity(0.2),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      "assets/img/" + altSign[index],
                    ),
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
