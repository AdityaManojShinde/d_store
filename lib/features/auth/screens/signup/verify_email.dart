import 'package:d_store/common/widgets/success_screen.dart';
import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.go('/login');
              },
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              // image
              SizedBox(
                width: DeviceUtils.screenWidth(context) * 0.6,
                child: Image.asset(
                  ImgAssets.verifyEmail,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSection),
              // title
              Text(
                AppText.emailVerifyTitle,
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              Text(
                'example@gamil.com',
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              // subtitle
              Text(
                AppText.emailVerifySubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              // btn
              const SizedBox(height: AppSizes.spaceBtwSection),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        DeviceUtils.navigateToScreen(
                          context,
                          SuccessScreen(
                            title: AppText.accountCreatedTitle,
                            subtitle: AppText.accountCreatedSubtitle,
                            image: ImgAssets.accountCreated,
                            onPressed: () => context.go('/login'),
                          ),
                        );
                      },
                      child: const Text(AppText.continueBtn))),
              const SizedBox(height: AppSizes.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(AppText.resendEmail)),
              )
            ],
          )),
    );
  }
}
