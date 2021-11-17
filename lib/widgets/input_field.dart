import 'package:flutter/material.dart';
import 'package:login_tasks_list/components/text_style.dart';

class InputField extends StatelessWidget {
  const InputField({required this.hintText, Key? key}) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 27, right: 23),
      child: Container(
        // width: MediaQuery.of(context).size.width / 1.2,
        height: 51,
        padding: const EdgeInsets.only(
          left: 30,
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(22),
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5),
          ],
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
            ),
            style: kTextStylePoppinsWeight400,
          ),
        ),
      ),
    );
  }
}
