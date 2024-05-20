import 'package:d_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:d_store/features/shop/screens/home/widgets/promo_banner_slider.dart';
import 'package:d_store/features/shop/screens/home/widgets/shop_home_appbar.dart';
import 'package:d_store/utils/constants/sizes.dart';

import 'package:flutter/material.dart';


class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // AppBar => Header
            HomeAppBar(),
            //--------- App Body ------

            Padding(
              padding: EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  // ------Promo Banners and Slider------------
                  PromoBannerSlider(
                    autoPlay: true,
                  ),
                  SizedBox(height: AppSizes.spaceBtwSection),
                  //----------- Product Cart Grid and product card----------
                  ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
