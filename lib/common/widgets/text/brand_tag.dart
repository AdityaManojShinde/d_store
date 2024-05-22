import 'package:d_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BrandTag extends StatelessWidget {
  const BrandTag({
    super.key,
    required this.brand,
    this.space = 3,
    this.size = 10,
    this.icon = Icons.verified,
    this.iconColor = AppColors.primary,
    this.isBig = false,
  });
  final String brand;
  final double space, size;
  final IconData icon;
  final Color iconColor;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            brand,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: isBig
                ? Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontWeight: FontWeight.bold)
                : Theme.of(context).textTheme.labelMedium,
          ),
        ),
        SizedBox(width: space),
        Icon(icon, color: iconColor, size: isBig ? 20 : size),
      ],
    );
  }
}
