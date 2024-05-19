import 'package:carousel_slider/carousel_slider.dart';
import 'package:d_store/features/shop/controllers/promo_banner_indicator_cubit.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../common/widgets/image/d_rounded_image.dart';
import '../../../../../utils/constants/image_assets.dart';

class PromoBannerSlider extends StatelessWidget {
  const PromoBannerSlider({
    super.key,
    required this.autoPlay,
    this.enlargeCentre,
  });

  final bool autoPlay;
  final bool? enlargeCentre;

  final bannerImages = const [
    DRoundedImage(
      imagePath: ImgAssets.promoBanner_1,
    ),
    DRoundedImage(
      imagePath: ImgAssets.promoBanner_2,
    ),
    DRoundedImage(
      imagePath: ImgAssets.promoBanner_3,
    ),
    DRoundedImage(
      imagePath: ImgAssets.promoBanner_4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final PromoBannerCubit bannerCubit =
        BlocProvider.of<PromoBannerCubit>(context);
    return Column(
      children: [
        // Slider
        CarouselSlider(
          carouselController: bannerCubit.caroselController,
          options: CarouselOptions(
            onPageChanged: (index, _) =>
                context.read<PromoBannerCubit>().updateCubit(index),
            viewportFraction: 1,
            enlargeCenterPage: enlargeCentre,
            autoPlay: autoPlay,
          ),
          items: bannerImages,
        ),
        // Indicator
        const Center(
            child: _CircularIndicator(
          dotColor: AppColors.primary,
          count: 4,
          size: 3,
          space: 3,
        )),
      ],
    );
  }
}

class _CircularIndicator extends StatelessWidget {
  const _CircularIndicator(
      {super.key,
      required this.count,
      required this.size,
      this.dotColor = Colors.black,
      this.space = 3,
      this.alignment = MainAxisAlignment.center});

  final int count;
  final double size, space;
  final Color dotColor;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    // use bloc builder
    // for loop index == cubit value
    return BlocBuilder<PromoBannerCubit, int>(
        builder: (BuildContext context, state) {
      return Row(
        mainAxisAlignment: alignment,
        children: List.generate(
            count,
            (index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: space),
                  child: RadiusContainer(
                      height: size,
                      width: 25,
                      color: index == state ? dotColor : Colors.grey,
                      radius: size),
                )),
      );
    });
  }
}

class RadiusContainer extends StatelessWidget {
  const RadiusContainer({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
    required this.color,
  });

  final double height, width, radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: color,
      ),
    );
  }
}
