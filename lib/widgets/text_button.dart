import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/color.dart';
import 'package:login_tasks_list/components/text_style.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({required this.onTap, required this.label, Key? key})
      : super(key: key);

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        color: AppColors.bBlueColor,
        height: 62,
        width: double.infinity,
        child: Center(
          child: Text(
            label,
            style: kTextStyleWhitePoppinsWeight600,
          ),
        ),
      ),
    );
  }
}
