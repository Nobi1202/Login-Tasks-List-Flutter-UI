import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/color.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(100),
                ),
                color: AppColors.bLightBlueColor,
              ),
              width: 100,
              height: 100,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                color: AppColors.bLightBlueColor,
              ),
              width: 100,
              height: 100,
            )
          ],
        ),
        Row(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                ),
                color: AppColors.bLightBlueColor,
              ),
              width: 100,
              height: 100,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                ),
                color: AppColors.bLightBlueColor,
              ),
              width: 100,
              height: 100,
            )
          ],
        ),
      ],
    );
  }
}
