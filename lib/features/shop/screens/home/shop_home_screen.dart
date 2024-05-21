import 'package:d_store/common/widgets/layouts/store_grid_layout.dart';
import 'package:d_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:d_store/common/widgets/text/section_title.dart';
import 'package:d_store/features/shop/screens/home/widgets/promo_banner_slider.dart';
import 'package:d_store/features/shop/screens/home/widgets/shop_home_appbar.dart';
import 'package:d_store/utils/constants/sizes.dart';

import 'package:flutter/material.dart';

// MAIN HOME SCREEN AFTER SIGNIN

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // AppBar => Header
            const HomeAppBar(),
            //--------- App Body ------

            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // ------Promo Banners and Slider------------
                  const PromoBannerSlider(autoPlay: true),
                  const SizedBox(height: AppSizes.spaceBtwSection),
                  //----------- Product Cart Grid and product card----------
                  // section title
                  StoreSectionTitle(title: 'Today’s Deals', onPressed: () {}),
                  const SizedBox(height: AppSizes.spaceBtwItems),
                  // products card grid
                  StoreGridLayout(
                    count: 9,
                    mainAxisExtent: 295,
                    builder: (context, index) => const ProductCardVertical(),
                  ),
                  // ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
