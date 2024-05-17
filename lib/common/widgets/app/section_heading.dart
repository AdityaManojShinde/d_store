import 'package:flutter/material.dart';

class DSectionHeading extends StatelessWidget {
  const DSectionHeading(
      {super.key,
      required this.title,
      this.actionBtnTitle = 'View all',
      this.showActionBtn = true,
      required this.onPressed,
      this.color,
      this.actionBtnColor});
  final String title;
  final String actionBtnTitle;
  final bool showActionBtn;
  final Color? color;
  final Color? actionBtnColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: color),
        ),
        showActionBtn
            ? TextButton(
                onPressed: onPressed,
                child: Text(
                  actionBtnTitle,
                  style: TextStyle(color: actionBtnColor),
                ))
            : const SizedBox(),
      ],
    );
  }
}
