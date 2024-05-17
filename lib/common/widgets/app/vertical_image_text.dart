import 'package:auto_size_text/auto_size_text.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerticalimageText extends StatelessWidget {
  const VerticalimageText({
    super.key,
    required this.image,
    required this.title,
    this.onPressed,
    this.backgroundColor = Colors.white,
  });
  final String image, title;
  final VoidCallback? onPressed;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(100)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems / 2),
          Expanded(
            child: AutoSizeText(
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              title,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
