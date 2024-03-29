import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../controllers/onbording/onbording_controller.dart';

class OnBordingPageIndicator extends StatelessWidget {
  const OnBordingPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final isDarkMode = DeviceUtils.isDarkMode(context);
    final OnBordingCubit bloc = BlocProvider.of<OnBordingCubit>(context);
    return Positioned(
        bottom: 50,
        left: AppSizes.defaultSpace,
        child: SmoothPageIndicator(
          onDotClicked: (index) {
            context.read<OnBordingCubit>().onDotCick(index);
          },
          effect: ExpandingDotsEffect(
              activeDotColor: AppColors.primary,
              dotColor: isDarkMode ? Colors.white : Colors.black,
              dotHeight: 6),
          controller: bloc.controller,
          count: 3,
        ));
  }
}
