import 'package:d_store/common/widgets/app/section_heading.dart';
import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/app/vertical_image_text.dart';

class ShopAppBarCategories extends StatelessWidget {
  const ShopAppBarCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          DSectionHeading(
            title: 'Popular Categories',
            onPressed: () {},
            showActionBtn: false,
            color: Colors.white,
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
            height: 100,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (_, index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: VerticalimageText(
                        image: ImgAssets.categorySportShope,
                        title: 'Shoes',
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
