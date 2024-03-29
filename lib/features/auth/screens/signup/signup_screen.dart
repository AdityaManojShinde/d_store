import 'package:d_store/features/auth/screens/login/widgets/login_divider.dart';
import 'package:d_store/features/auth/screens/login/widgets/login_footer.dart';
import 'package:d_store/features/auth/screens/signup/widgets/signup_form.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = DeviceUtils.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: isDark ? Colors.black : Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              AppText.signUpScreenTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: AppSizes.spaceBtwSection),
            // Form
            const SignUpForm(),
            const SizedBox(height: AppSizes.spaceBtwSection),
            // Divider
            const LoginDivider(),
            // footer'
            const SizedBox(height: AppSizes.spaceBtwItems),
            const LoginFooter(),
          ],
        ),
      ),
    );
  }
}
