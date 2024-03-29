import 'package:d_store/features/auth/controllers/onbording/onbording_controller.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppSizes.defaultSpace,
        right: AppSizes.spaceBtwItems,
        child: TextButton(
            onPressed: () {
              context.read<OnBordingCubit>().skipBtnClick();
            },
            child: const Text("Skip")));
  }
}
