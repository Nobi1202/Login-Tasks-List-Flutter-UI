import 'package:flutter/material.dart';
import 'package:login_tasks_list/dashboard/sign_up_screen.dart';
import 'package:login_tasks_list/widgets/stack_widget.dart';
import 'package:login_tasks_list/widgets/text_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const StackWidget(),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 102, right: 100.44),
            child: Image(
              image: AssetImage('assets/images/pic1.png'),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 46),
            child: Column(
              children: const [
                Text(
                  "Gets things done with TODO",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Lorem ipsum dolor sit amet,\n"
                  "consectetur adipiscing elit. Interdum\n"
                  " dictum tempus, interdum at dignissim\n"
                  " metus. Ultricies sed nunc.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 24, bottom: 94),
            child: TextButtonWidget(
                onTap: () {
                  Navigator.of(context).pushNamed(SignUpScreen.routeName);
                },
                label: 'Get Started'),
          ),
        ],
      ),
    );
  }
}
