import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_news_app/providers/auth_credentials_check_provider.dart';
import 'package:flutter_news_app/screens/news_screen.dart';
import 'package:flutter_news_app/widgets/custom_text_field.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.white,
      child: Scaffold(
        body: ChangeNotifierProvider<AuthCredentialsCheckProvider>(
          create: (context) => AuthCredentialsCheckProvider(),
          child: Consumer<AuthCredentialsCheckProvider>(
            builder: (context, provider, child) {
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Container(
                      width: double.infinity,
                      height: 120,
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset("assets/images/logo2.png"),
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CustomTextInputField(
                        labelText: "Email",
                        hintText: "Enter email address",
                        errorText: provider.isEmailErrol
                            ? provider.emailMessage
                            : null,
                        controller: userNameController,
                        keyboardType: TextInputType.emailAddress,
                        onChanged: (value) {
                          provider.isValidEmail(value);
                        },
                      ),
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: CustomTextInputField(
                          labelText: "Password",
                          hintText: "password",
                          errorText: provider.isPassErrol
                              ? provider.passwordMessage
                              : null,
                          controller: passwordController,
                          keyboardType: TextInputType.visiblePassword,
                          isPassword: true,
                          onChanged: (value) {
                            provider.isValidPassword(value);
                          }),
                    ),
                    const SizedBox(height: 30),
                    InkWell(
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        onTap: () {
                          //TODO
                        }),
                    const SizedBox(height: 30),
                    Center(
                      child: SizedBox(
                        width: 150,
                        height: 50,
                        child: MaterialButton(
                            // padding: const EdgeInsets.all(15),
                            color: const Color(0xff001F3F),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)),
                            onPressed: () {
                              if (!provider.isEmailErrol &&
                                  !provider.isPassErrol) {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const NewsScreen(),
                                  ),
                                );
                              } else {
                                // Optionally, show a toast/snackbar
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Invalid email or password"),
                                  ),
                                );
                              }
                            },
                            child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Or sign in with",
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: MaterialButton(
                            color: const Color(0xffF5F5F5),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              //TODO
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(child: SizedBox()),
                                  FaIcon(FontAwesomeIcons.google),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Continue with Google",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: MaterialButton(
                            color: const Color(0xffF5F5F5),
                            shape: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              //TODO
                            },
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(child: SizedBox()),
                                  FaIcon(FontAwesomeIcons.facebook),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Continue with Facebook",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Expanded(child: SizedBox()),
                                ],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(text: "Don't have an account? "),
                          TextSpan(
                              text: "Register",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print("hello");
                                  //TODO
                                }),
                        ])),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
