import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:koncepto/constants/style.dart';
import 'package:koncepto/routing/routes.dart';
import 'package:koncepto/widgets/custom_text.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              body: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(children: const [
                        SizedBox()
                      ],),
                      const SizedBox(height: 30,),
                      Row(
                        children: [
                          Text("koncept", style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -.5,
                          ),),
                        ],
                      ),

                      const SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          hintText: "mdomanski@domain.com",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          hintText: "123",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          )
                        ),
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Center(
                            child:CustomText(text: "Forgot Password?", color: active),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(rootRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(20), color: active),
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const CustomText(
                            text: "Log In",
                            color: Colors.white,
                          ),
                          ),
                        ),
                      const SizedBox(height: 15),
                      InkWell(
                        onTap: () {
                          Get.offAllNamed(rootRoute);
                        },
                        child: Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(20), color: active),
                          alignment: Alignment.center,
                          width: double.maxFinite,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: const CustomText(
                            text: "Register",
                            color: Colors.white,
                          ),
                          ),
                        ),
                      // SizedBox(height: 15,),
                      // RichText(text: TextSpan(
                      //   children: []
                      // ))
                      
                    ],
                  ),
                ),
              )
        );

  }
}