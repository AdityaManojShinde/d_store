import 'package:flutter/material.dart';

class ProductTitleText extends StatelessWidget {
  const ProductTitleText({
    super.key,
    required this.text,
     this.maxLines = 1,
    this.isSmall = true,
    this.textAlign = TextAlign.start,
  });

  final String text;
  final int maxLines;
  final bool isSmall;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: isSmall
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleLarge,
    );
  }
}
