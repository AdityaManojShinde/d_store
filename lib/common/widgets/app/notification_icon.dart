import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DNotificationIcon extends StatelessWidget {
  const DNotificationIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
    required this.icon,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.shopping_bag,
              color: Colors.white,
            )),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text(
              '7',
              style: Theme.of(context).textTheme.labelMedium!.apply(
                    color: Colors.white,
                    fontSizeFactor: 0.8,
                  ),
            )),
          ),
        ),
      ],
    );
  }
}
