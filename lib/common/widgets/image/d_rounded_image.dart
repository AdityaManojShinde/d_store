import 'package:flutter/cupertino.dart';

import '../../../utils/constants/sizes.dart';

class DRoundedImage extends StatelessWidget {
  const DRoundedImage({
    super.key,
    this.height,
    this.width,
    this.applyImageRadius = true,
    required this.imagePath,
    this.border,
    this.bgColor,
    this.fit,
    this.isNetworkImage = false,
    this.onPressed,
    this.borderRadius = AppSizes.minRadius,
  });

  final double? height, width;
  final bool applyImageRadius;
  final String imagePath;
  final BoxBorder? border;
  final Color? bgColor; // background color
  final BoxFit? fit;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            border: border,
            borderRadius: BorderRadius.circular(borderRadius),
            color: bgColor,
          ),
          child: ClipRRect(
            borderRadius: applyImageRadius
                ? BorderRadius.circular(borderRadius)
                : BorderRadius.zero,
            child: Image(
                fit: fit,
                image: isNetworkImage
                    ? NetworkImage(imagePath)
                    : AssetImage(imagePath) as ImageProvider),
          )),
    );
  }
}