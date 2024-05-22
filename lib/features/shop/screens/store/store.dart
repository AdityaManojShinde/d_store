import 'package:d_store/common/widgets/app/notification_icon.dart';
import 'package:d_store/common/widgets/appbar/custom_appbar.dart';
import 'package:d_store/common/widgets/layouts/store_grid_layout.dart';
import 'package:d_store/common/widgets/shapes/container/search_container.dart';
import 'package:d_store/common/widgets/text/brand_tag.dart';
import 'package:d_store/common/widgets/text/section_title.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

const _dummyBrandData = ["Nike", "Adidas", "Puma", "Titan"];

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      // Custom App bar
      appBar: DAppBar(
        title: Text("Shop", style: Theme.of(context).textTheme.titleLarge),
        actions: [
          DNotificationIcon(
            onPressed: () {},
            iconColor: isDark ? Colors.white : Colors.black,
            icon: Iconsax.shopping_bag,
            bgColor: Colors.deepOrange,
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, scrolled) {
          return [
            // <=== AppBar ===>
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: isDark ? Colors.black : Colors.white,
              expandedHeight: 430,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    const DSearchContainer(
                      text: 'Search Dino Store',
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: AppSizes.spaceBtwSection),
                    // Section Title with view all -> onPressed
                    StoreSectionTitle(
                        title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(height: AppSizes.spaceBtwItems),
                    // Dummy data is being used here =======> # Replace with backend data
                    StoreGridLayout(
                        count: _dummyBrandData.length,
                        mainAxisExtent: 60,
                        builder: (_, index) => BrandChip(
                              brandTitle: _dummyBrandData[index],
                            )),
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(color: isDark ? AppColors.dark : AppColors.creamWhite),
      ),
    );
  }
}

class BrandChip extends StatelessWidget {
  const BrandChip({
    super.key,
    this.onPressed,
    required this.brandTitle,
    this.productsNum = 260,
    this.padding = 5,
    this.leading = const Icon(Iconsax.shopping_cart),
  });
  final VoidCallback? onPressed;
  final String brandTitle;
  final int productsNum;
  final double padding;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return GestureDetector(
      onTap: onPressed,
      child: Chip(
        padding: EdgeInsets.symmetric(horizontal: padding, vertical: padding),
        backgroundColor: isDark ? AppColors.dark : Colors.white,
        avatar: leading,
        label: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BrandTag(
              brand: brandTitle,
              isBig: true,
              size: 10,
            ),
            Text(
              '$productsNum products available',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}
