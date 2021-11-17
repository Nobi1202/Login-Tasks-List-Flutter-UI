import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/text_style.dart';
import 'package:login_tasks_list/dashboard/sign_up_screen.dart';
import 'package:login_tasks_list/dashboard/welcome_screen.dart';
import 'package:login_tasks_list/widgets/input_field.dart';
import 'package:login_tasks_list/widgets/stack_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:login_tasks_list/widgets/text_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  static const routeName = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const StackWidget(),
          Expanded(
            child: ListView(
              children: [
                const Center(
                  child: Text(
                    "Welcome back",
                    style: kTextStylePoppinsWeight600,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: DottedBorder(
                    padding:
                        const EdgeInsets.only(left: 15, top: 15, bottom: 8),
                    dashPattern: const [10, 4],
                    color: Colors.grey,
                    child: const Center(
                      child: Image(
                        image: AssetImage('assets/images/pic2.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const InputField(hintText: 'Enter your email'),
                const SizedBox(
                  height: 21,
                ),
                const InputField(hintText: 'Enter your password'),
                const SizedBox(
                  height: 25,
                ),
                const Center(
                  child: Text(
                    "Forgot Password",
                    style: kTextStylePoppinsBlueWeight400,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 24, left: 27, right: 23, bottom: 23),
                  child: TextButtonWidget(
                      onTap: () {
                        Navigator.of(context)
                            .pushNamed(WelcomeScreen.routeName);
                      },
                      label: "Sign In"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don’t have an account ? ",
                      style: kTextStylePoppinsWeight700,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(SignUpScreen.routeName);
                      },
                      child: const Text(
                        "Sign up",
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
