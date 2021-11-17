import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/color.dart';
import 'package:login_tasks_list/components/text_style.dart';
import 'package:login_tasks_list/widgets/stack_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    Size _textSize(String text, TextStyle style) {
      final TextPainter textPainter = TextPainter(
          text: TextSpan(text: text, style: style),
          maxLines: 1,
          textDirection: TextDirection.ltr)
        ..layout(minWidth: 0, maxWidth: double.infinity);
      return textPainter.size;
    }

    const String text = "Welcome, Nobi";
    const TextStyle textStyle = kTextStyleWhitePoppinsWeight600;
    final Size txtSize = _textSize(text, textStyle);

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 2 / 5,
                color: AppColors.bBlueColor,
              ),
              const StackWidget(),
              Positioned(
                bottom: 60,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/myavatar.jpg"),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width / 2 - txtSize.width / 2,
                bottom: 20,
                child: const Text(
                  text,
                  style: kTextStyleWhitePoppinsWeight600,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 25,
              right: 25,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Good Afternoon",
                style: kTextStylePoppinsWeight600Size12,
              ),
            ),
          ),
          Center(
            child: Container(
              height: 120,
              width: 120,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/img.png'),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 21,
              left: 27,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Tasks List",
                style: kTextStylePoppinsWeight600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 21, bottom: 36, top: 20),
            child: SizedBox(
              height: MediaQuery.of(context).size.height / 4 + 10,
              width: MediaQuery.of(context).size.width - 52,
              child: const Card(
                elevation: 8,
                child: Text("hihi"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
