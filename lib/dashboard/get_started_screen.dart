import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/color.dart';
import 'package:login_tasks_list/main.dart';
import 'package:login_tasks_list/widgets/semicicle.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: const [
              RotatedBox(
                quarterTurns: 90,
                child: MyArc(diameter: 200),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
