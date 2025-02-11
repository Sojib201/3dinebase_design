import 'package:action_panel/bloc/login_state.dart';
import 'package:action_panel/panel.dart';
import 'package:action_panel/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'api/api_service.dart';
import 'bloc/login_bloc.dart';
import 'bloc/login_event.dart';
import 'hive/boxes.dart';
import 'model/user_model.dart';

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
        resizeToAvoidBottomInset: true,
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
                  width: MediaQuery.of(context).size.width / 2,
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
                        borderSide: BorderSide(),
                        borderRadius: BorderRadius.circular(28.r),
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 30),
                      hintText: 'CID',
                      hintStyle: TextStyle(
                        color: Utils.secondaryColor.withOpacity(0.7),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide:
                            BorderSide(color: Utils.logoColor, width: 4.w),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide:
                            BorderSide(color: Utils.secondaryColor, width: 2.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
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
                        borderSide:
                            BorderSide(color: Utils.logoColor, width: 4.w),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide:
                            BorderSide(color: Utils.secondaryColor, width: 2.w),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
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
                        borderSide:
                            BorderSide(color: Utils.logoColor, width: 4.w),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(28.r),
                        borderSide:
                            BorderSide(color: Utils.secondaryColor, width: 2.w),
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
                BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginSuccess) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ActionPanel(),
                        ),
                      );
                    } else if (state is LoginFailure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Login Failed'),
                        ),
                      );
                    }
                  },
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      return CircularProgressIndicator();
                    }

                    return InkWell(
                      onTap: () async {
                        await apiService()
                            .dmPath(cidController.text.toString());

                        if (Boxes.getDmPath().containsKey("base_url")) {
                          context.read<LoginBloc>().add(
                                LoginPerform(
                                  cid: cidController.text,
                                  userId: userIdController.text,
                                  password: passwordController.text,
                                ),
                              );
                        } else {
                          print('Something wrong');

                          return;
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.3,
                        height: 130.h,
                        decoration: BoxDecoration(
                          color: Utils.logoColor,
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                letterSpacing: 2.sp,
                                fontSize: 60.sp,
                                fontWeight: FontWeight.bold,
                                // color: passwordController.text.isEmpty
                                //     ? Utils.primaryColor
                                //     : Colors.green
                                color: Utils.primaryColor),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
