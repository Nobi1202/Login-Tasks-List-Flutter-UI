import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/text_style.dart';
import 'package:login_tasks_list/dashboard/sign_in_screen.dart';
import 'package:login_tasks_list/dashboard/welcome_screen.dart';
import 'package:login_tasks_list/widgets/input_field.dart';
import 'package:login_tasks_list/widgets/stack_widget.dart';
import 'package:login_tasks_list/widgets/text_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  static const routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          const StackWidget(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    "Welcome Onboard!",
                    style: kTextStylePoppinsWeight600,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Center(
                  child: Text(
                    "Let's help you meet up your tasks",
                    style: kTextStylePoppinsWeight400,
                  ),
                ),
                const SizedBox(
                  height: 49,
                ),
                const InputField(hintText: "Enter your full name"),
                const SizedBox(
                  height: 21,
                ),
                const InputField(hintText: "Enter your email"),
                const SizedBox(
                  height: 21,
                ),
                const InputField(hintText: "Enter password"),
                const SizedBox(
                  height: 21,
                ),
                const InputField(hintText: "Confirm password"),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50, left: 27, right: 23, bottom: 23),
                  child: TextButtonWidget(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(WelcomeScreen.routeName);
                      },
                      label: "Register"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account ? ",
                      style: kTextStylePoppinsWeight700,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(SignInScreen.routeName);
                      },
                      child: const Text(
                        "Sign in",
                        style: kTextStylePoppinsBlueWeight700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
