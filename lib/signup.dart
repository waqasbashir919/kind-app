import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:kind/helper/helper.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final containerKey = GlobalKey();
  bool isChecked = false;
  @override
  var containerHeight, containerWidth;
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      containerHeight = containerKey.currentContext!.size!.height + 200;
      containerWidth = containerKey.currentContext!.size!.width / 2;
      print(containerHeight);
    }

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Image(
                        height: 75, image: AssetImage('assets/logo.png'))),
                Container(
                  // height: 600,
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Expanded(
                        key: containerKey,
                        child: Container(
                          // height: 600,
                          padding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 20),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color.fromARGB(31, 169, 166, 166),
                          ),
                          child: Column(
                            children: [
                              Container(
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: width * 0.06,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Register your account to',
                                  style: TextStyle(
                                    fontSize: width * 0.032,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              userTextfieldGroup(
                                width: width,
                                prefixIcon: Icons.person,
                                keys: 'Username/Email',
                                hintText: 'Him.Kage322',
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              passTextfieldGroup(
                                  width: width,
                                  prefixIcon: Icons.lock,
                                  keys: 'Password',
                                  hintText: 'Enter your password',
                                  passwordIcon: Icons.visibility),
                              SizedBox(
                                height: 8,
                              ),
                              passTextfieldGroup(
                                  width: width,
                                  prefixIcon: Icons.lock,
                                  keys: 'Confirm password',
                                  hintText: 'Enter your password',
                                  passwordIcon: Icons.visibility),
                              SizedBox(
                                height: 8,
                              ),
                              userTextfieldGroup(
                                width: width,
                                prefixIcon: Icons.phone_in_talk_rounded,
                                keys: 'Phone number',
                                hintText: 'Enter phone number',
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    splashRadius: 20,
                                    value: isChecked,
                                    onChanged: (value) {
                                      setState(() {
                                        isChecked = value!;
                                      });
                                    },
                                  ),
                                  Expanded(
                                    child: Text(
                                      'I agree to terms and condition and privacy policy',
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.035),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 70,
                        right: 70,
                        child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: helperClass().fillColor,
                                borderRadius: BorderRadius.circular(30)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/otp');
                              },
                              child: Text(
                                'Register',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width * 0.04),
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // Container(
                //   width: width * 0.6,
                //   height: height * 0.07,
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   decoration: BoxDecoration(
                //       color: Color.fromARGB(31, 169, 166, 166),
                //       borderRadius: BorderRadius.circular(10)),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       Image.network(
                //         'http://pngimg.com/uploads/google/google_PNG19635.png',
                //         height: 30,
                //       ),
                //       SizedBox(
                //         width: 10,
                //       ),
                //       Text(
                //         "Continue with Google",
                //         style: TextStyle(fontSize: width * 0.04),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(31, 169, 166, 166),
                      borderRadius: BorderRadius.circular(10)),
                  width: width * 0.6,
                  height: height * 0.07,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Continue with Facebook",
                        style: TextStyle(fontSize: width * 0.04),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Already have an account ? Login',
                      style: TextStyle(fontSize: width * 0.04),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class userTextfieldGroup extends StatelessWidget {
  const userTextfieldGroup(
      {Key? key,
      required this.width,
      required this.keys,
      required this.hintText,
      required this.prefixIcon})
      : super(key: key);

  final double width;
  final String keys, hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: helperClass().blueFillColor,
            ),
            child: Icon(prefixIcon),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    keys,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: width * 0.04),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 25,
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        fontSize: width * 0.042,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class passTextfieldGroup extends StatelessWidget {
  const passTextfieldGroup(
      {Key? key,
      required this.width,
      required this.keys,
      required this.hintText,
      required this.prefixIcon,
      required this.passwordIcon})
      : super(key: key);

  final double width;
  final String keys, hintText;
  final IconData prefixIcon, passwordIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: helperClass().blueFillColor,
                ),
                child: Icon(prefixIcon),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        keys,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: width * 0.04),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 25,
                      child: TextField(
                        enableSuggestions: true,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                          hintStyle: TextStyle(
                            fontSize: width * 0.042,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(passwordIcon)
            ],
          ))
        ],
      ),
    );
  }
}
