import 'package:d_store/utils/constants/image_assets.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResetPwdScreen extends StatelessWidget {
  const ResetPwdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => context.pop(),
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
                  ImgAssets.accountCreated,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwSection),

              // title
              Text(
                AppText.resetEmailSent,
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
                AppText.resetEmailSubtitle,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              // btn
              const SizedBox(height: AppSizes.spaceBtwSection),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        context.go('/login');
                      },
                      child: const Text(AppText.doneBtn))),
              const SizedBox(height: AppSizes.spaceBtwSection),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(AppText.resendEmail),
                ),
              )
            ],
          )),
    );
  }
}
