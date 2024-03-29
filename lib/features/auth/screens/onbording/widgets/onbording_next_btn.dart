import 'package:d_store/features/auth/screens/login/login_screen.dart';
import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class OnBordingNextBtn extends StatelessWidget {
  const OnBordingNextBtn({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final isDarkMode = DeviceUtils.isDarkMode(context);
    return Positioned(
        bottom: 50,
        right: AppSizes.defaultSpace,
        child: FloatingActionButton(
          backgroundColor: isDarkMode ? AppColors.primary : Colors.black,
          shape: const CircleBorder(),
          onPressed: () {
            DeviceUtils.navigateReplace(context, const LoginScreen());
          },
          child: const Icon(color: Colors.white, Icons.arrow_forward_ios),
        ));
  }
}
