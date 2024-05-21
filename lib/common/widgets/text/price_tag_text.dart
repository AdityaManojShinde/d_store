import 'package:flutter/material.dart';

class PriceTagText extends StatelessWidget {
  const PriceTagText(
      {super.key,
      this.currencySign = "\$",
      required this.price,
      this.isLarge = false,
      this.applyDiscount = false});
  final String currencySign;
  final double price;
  final bool isLarge;
  final bool applyDiscount;

  @override
  Widget build(BuildContext context) {
    return Text(
      "$currencySign$price",
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: isLarge
          ? Theme.of(context).textTheme.headlineMedium!.apply(
              decoration: applyDiscount ? TextDecoration.lineThrough : null)
          : Theme.of(context).textTheme.titleLarge!.apply(
              decoration: applyDiscount ? TextDecoration.lineThrough : null),
    );
  }
}
