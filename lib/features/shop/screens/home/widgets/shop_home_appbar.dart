import 'package:d_store/common/widgets/app/notification_icon.dart';
import 'package:d_store/common/widgets/appbar/custom_appbar.dart';
import 'package:d_store/common/widgets/app/shop_header.dart';
import 'package:d_store/common/widgets/shapes/container/search_container.dart';
import 'package:d_store/features/shop/screens/home/widgets/shop_appbar_categories.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DAppHeader(
      child: Column(
        children: [
          DAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppText.homeAppBartitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .apply(color: Colors.white)),
                Text(AppText.adityaShinde,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .apply(color: Colors.white)),
              ],
            ),
            actions: [
              DNotificationIcon(
                icon: Iconsax.shopping_bag,
                onPressed: () {},
                iconColor: Colors.white,
                bgColor: Colors.black.withOpacity(0.5),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBtwItems),

          // Search bar
          const DSearchContainer(),
          const SizedBox(height: AppSizes.spaceBtwSection),
          // categories
          const ShopAppBarCategories(),
        ],
      ),
    );
  }
}
