import 'package:d_store/features/auth/screens/password_config/reset_pwd_screen.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppText.forgetPwd,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),

            // subtitle
            Text(
              AppText.forgetPwdSubtitle,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            // btn
            const SizedBox(height: AppSizes.spaceBtwSection),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppText.eMail),
            ),
            const SizedBox(height: AppSizes.spaceBtwSection),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    DeviceUtils.navigateToScreen(
                        context, const ResetPwdScreen());
                  },
                  child: const Text(AppText.submit)),
            ),
          ],
        ),
      ),
    );
  }
}
