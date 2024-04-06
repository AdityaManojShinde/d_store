import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class DSearchContainer extends StatelessWidget {
  const DSearchContainer(
      {super.key,
      this.text = 'Search in Store',
      this.icon = Iconsax.search_normal,
      required this.showbackgrount,
      required this.showBorder});
  final String text;
  final IconData icon;
  final bool showbackgrount, showBorder;

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isdark = DeviceUtils.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: DeviceUtils.screenWidth(context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.blueGrey,
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(text, style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
      ),
    );
  }
}
