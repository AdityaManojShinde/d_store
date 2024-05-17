import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DSearchContainer extends StatelessWidget {
  const DSearchContainer(
      {super.key,
      this.text = 'Search in Store',
      this.icon = Iconsax.search_normal,
      this.showbackground = true,
      this.showBorder = true,
      this.onPressed});
  final String text;
  final IconData icon;
  final bool showbackground, showBorder;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isdark = DeviceUtils.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(16),
          width: DeviceUtils.screenWidth(context),
          decoration: BoxDecoration(
            color: showbackground
                ? isdark
                    ? AppColors.bg
                    : Colors.white
                : Colors.transparent,
            borderRadius: BorderRadius.circular(16),
            border: showBorder
                ? Border.all(color: isdark ? Colors.white : Colors.grey)
                : null,
          ),
          child: Row(
            children: [
              Icon(
                icon,
                color: isdark ? Colors.white : Colors.grey,
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: isdark ? Colors.white : Colors.black))
            ],
          ),
        ),
      ),
    );
  }
}
