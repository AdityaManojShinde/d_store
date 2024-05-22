import 'package:d_store/common/styles/shadow_style.dart';
import 'package:d_store/common/widgets/image/d_rounded_image.dart';
import 'package:d_store/common/widgets/shapes/circular_container.dart';
import 'package:d_store/common/widgets/text/brand_tag.dart';
import 'package:d_store/common/widgets/text/price_tag_text.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../Icons/circular_icon.dart';
import '../../text/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    // Outer Container
    return GestureDetector(
        onTap: () {},
        child: Card(
          child: Container(
            width: 180,
            padding: const EdgeInsets.all(1),
            decoration: BoxDecoration(
              // Custom BoxShadow
              boxShadow: [ShadowStyle.verticalProductCardShadow],
              borderRadius: BorderRadius.circular(AppSizes.productImgRadius),
              color: isDark ? AppColors.darkGrey : AppColors.creamWhite,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              //<====== Thumbnail + wishlist tag + discount tag =======>
              Container(
                height: 180,
                padding: const EdgeInsets.all(5),
                child: Stack(
                  children: [
                    // image ----->
                    const DRoundedImage(imagePath: ImgAssets.nikeShoe),
                    // discount tag --->
                    Positioned(
                      top: 12,
                      left: 5,
                      child: CircularContainer(
                        height: null,
                        width: null,
                        radius: 8,
                        backgroundColor: AppColors.yellow.withOpacity(0.5),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          child: Text('25%',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(color: Colors.black)),
                        ),
                      ),
                    ),
                    // wishlist/heart button --->
                    const Positioned(
                      top: 5,
                      right: 5,
                      child:
                          CircularIcon(icon: Iconsax.heart5, color: Colors.red),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              //<-------- Details------------->
              Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // product title
                      const ProductTitleText(
                        text: 'Blue Nike Shoe',
                        textAlign: TextAlign.left,
                        maxLines: 2,
                      ),
                      // <----------Brand tag ----------->
                      const BrandTag(brand: 'Nike'),
                      const SizedBox(height: AppSizes.spaceBtwItems / 2),
                      // <-------- Price Tag + Add to cart ------>
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const PriceTagText(price: 450),
                            Container(
                              decoration: BoxDecoration(
                                color: isDark
                                    ? AppColors.primary
                                    : AppColors.darkGrey,
                                borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(
                                        AppSizes.productImgRadius),
                                    topLeft: Radius.circular(
                                        AppSizes.productImgRadius)),
                              ),
                              child: Center(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Iconsax.add,
                                      color: Colors.white,
                                    )),
                              ),
                            ),
                          ])
                    ],
                  )),
            ]),
          ),
        ));
  }
}
