import 'package:action_panel/panel.dart';
import 'package:action_panel/utils/styles.dart';
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
  TextEditingController cidController = TextEditingController();
  TextEditingController userIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool visiblePassword = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Utils.primaryColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/3dinebase.png',
                  height: 600.h,
                  width: 950.w,
                  fit: BoxFit.contain,
                ),
                SizedBox(height: 80.h),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 1.19,
                  child: TextField(
                    onSubmitted: (value) {},
                    controller: cidController,
                    autofocus: true,
                    decoration: InputDecoration(
                      fillColor: Utils.primaryColor,
                      enabled: true,
                      focusColor: Utils.secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      hintText: 'CID',
                      hintStyle: TextStyle(
                        color: Utils.secondaryColor.withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.logoColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.secondaryColor),
                      ),
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
                    controller: userIdController,
                    autofocus: true,
                    decoration: InputDecoration(
                      fillColor: Utils.primaryColor,
                      enabled: true,
                      focusColor: Utils.secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      hintText: 'User ID',
                      hintStyle: TextStyle(
                        color: Utils.secondaryColor.withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.logoColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.secondaryColor),
                      ),
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
                    controller: passwordController,
                    autofocus: true,
                    obscureText: visiblePassword,
                    decoration: InputDecoration(
                      fillColor: Utils.primaryColor,
                      enabled: true,
                      focusColor: Utils.secondaryColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Utils.secondaryColor.withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.logoColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide: BorderSide(color: Utils.secondaryColor),
                      ),
                      suffixIcon: IconButton(
                        icon: visiblePassword
                            ? Icon(
                                Icons.visibility_off_outlined,
                                color: Utils.secondaryColor.withOpacity(0.8),
                              )
                            : Icon(
                                Icons.remove_red_eye,
                                color: Utils.secondaryColor.withOpacity(0.8),
                              ),
                        onPressed: () {
                          setState(() {
                            visiblePassword = !visiblePassword;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.h,
                ),
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: Colors.green,
                        ),
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ActionPanel(),
                            ),
                          );
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 130.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.r),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(28.r),
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: Container(
                                    width: 1000.w,
                                    height: 100.h,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 2.w,
                                          color: Utils.secondaryColor),
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(28.r),
                                      ),
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
                                    'Login',
                                    style: TextStyle(
                                        letterSpacing: 2.sp,
                                        fontSize: 60.sp,
                                        fontWeight: FontWeight.bold,
                                        color: passwordController.text.isEmpty
                                            ? Utils.secondaryColor
                                            : Colors.green),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
