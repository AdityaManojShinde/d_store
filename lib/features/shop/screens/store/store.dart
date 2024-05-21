import 'package:d_store/common/widgets/app/notification_icon.dart';
import 'package:d_store/common/widgets/appbar/custom_appbar.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      appBar: DAppBar(
        title: Text("Shop", style: Theme.of(context).textTheme.titleLarge),
        actions: [
          DNotificationIcon(
              onPressed: () {},
              iconColor: isDark ? Colors.white : Colors.black,
              icon: Iconsax.shopping_bag)
        ],
      ),
    );
  }
}
