import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.image,
      this.onPressed});
  final String title, subtitle, image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // image
              SizedBox(
                width: DeviceUtils.screenWidth(context) * 0.6,
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSection),
              // title
              Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),

              // subtitle
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              // btn
              const SizedBox(height: AppSizes.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(AppColors.primary),
                    ),
                    onPressed: onPressed,
                    child: const Text(
                      AppText.continueBtn,
                      style: TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )),
    );
  }
}
