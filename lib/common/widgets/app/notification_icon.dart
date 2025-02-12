import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DNotificationIcon extends StatelessWidget {
  DNotificationIcon({
    super.key,
    required this.onPressed,
    this.iconColor = Colors.black,
    this.icon = Iconsax.shopping_bag,
    this.notificationNumber = 6,
    required this.bgColor,
  });
  final VoidCallback onPressed;
  final Color iconColor;
  final IconData icon;
  final int notificationNumber;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              color: iconColor,
            )),
        Positioned(
          right: 0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
                child: Text(
              "$notificationNumber",
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
