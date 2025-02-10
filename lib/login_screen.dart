import 'dart:convert';

import 'package:action_panel/main.dart';
import 'package:action_panel/panel.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:action_panel/widget/custom_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  TextEditingController ipAdderss = TextEditingController();
  bool visiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/3dinebase.png',
                  height: 280,
                  width: 600,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 80.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.19,
                  child: TextField(
                    onSubmitted: (value) {},
                    controller: ipAdderss,
                    autofocus: true,
                    obscureText: visiblePassword,
                    decoration: InputDecoration(
                      enabled: true,
                      focusColor: Colors.green,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      filled: true,
                      fillColor: Utils.primaryColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      hintText: 'CID',
                      hintStyle: TextStyle(color: Colors.grey.shade500),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.green)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.19,
                  child: TextField(
                    onSubmitted: (value) {},
                    controller: ipAdderss,
                    autofocus: true,
                    obscureText: visiblePassword,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Utils.primaryColor.withOpacity(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                        hintText: 'User ID',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.19,
                  child: TextField(
                    onSubmitted: (value) {},
                    controller: ipAdderss,
                    autofocus: true,
                    obscureText: visiblePassword,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Utils.primaryColor.withOpacity(1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: visiblePassword
                                ? Colors.grey.shade500
                                : Colors.amber,
                          ),
                          onPressed: () {
                            setState(() {
                              visiblePassword = !visiblePassword;
                            });
                          },
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        enabledBorder: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      )
                    :
                    // : ElevatedButton(
                    //     onPressed: () async {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //             builder: (context) => ActionPanel(),
                    //           ));
                    //     },
                    //     style: ButtonStyle(
                    //       backgroundColor:
                    //           WidgetStateProperty.resolveWith<Color>(
                    //               (Set<WidgetState> states) =>
                    //                   ipAdderss.text.isEmpty
                    //                       ? Colors.grey
                    //                       : Colors.green),
                    //     ),
                    //     child: Text(
                    //       'Log In',
                    //       style: TextStyle(
                    //           fontSize: 18,
                    //           color: ipAdderss.text.isEmpty
                    //               ? Colors.white.withOpacity(.8)
                    //               : Colors.white),
                    //     ),
                    //   ),
                    Container(
                        padding: EdgeInsets.all(8.h),
                        width: 550.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ActionPanel(),
                              ),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28.r),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.w,
                                          color: Utils.secondaryColor),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(28.r)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Utils.secondaryColor
                                              .withOpacity(0.6),
                                          blurRadius: 20.r,
                                          spreadRadius: 40.r,
                                          offset: Offset(0.w, 0.h),
                                        ),
                                        BoxShadow(
                                          color: Utils.primaryColor
                                              .withOpacity(0.45),
                                          blurRadius: 16.r,
                                          spreadRadius: -60.r,
                                          offset: Offset(0.w, 0.h),
                                        ),
                                        BoxShadow(
                                          color:
                                              Utils.primaryColor.withOpacity(1),
                                          blurRadius: 40.r,
                                          spreadRadius: -20.r,
                                          offset: Offset(0.w, 4.h),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    'Log In',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: ipAdderss.text.isEmpty
                                            ? Colors.white.withOpacity(.8)
                                            : Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
