import 'package:d_store/features/auth/screens/password_config/forget_password_screen.dart';
import 'package:d_store/features/auth/screens/signup/signup_screen.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:d_store/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwSection),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppText.loginFormEmailInput),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.password_check),
                  suffixIcon: Icon(Iconsax.eye_slash),
                  labelText: AppText.loginFormPassword),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            // remember me or forget password
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // remember me
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      Text(
                        AppText.rememberMe,
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),

                  // forget password
                  TextButton(
                      onPressed: () {
                        DeviceUtils.navigateToScreen(
                            context, const ForgetPasswordScreen());
                      },
                      child: const Text(AppText.forgetPassword))
                ],
              ),
            ),
            const SizedBox(height: AppSizes.spaceBtwItems),
            // sign btn
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(AppText.signIn))),
            // create account btn
            const SizedBox(height: AppSizes.spaceBtwItems),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    style: ButtonStyle(
                        padding: const MaterialStatePropertyAll(
                            EdgeInsets.symmetric(vertical: 10)),
                        textStyle: const MaterialStatePropertyAll(TextStyle(
                            inherit: true,
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w600)),
                        elevation: const MaterialStatePropertyAll(0),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)))),
                    onPressed: () {
                      DeviceUtils.navigateToScreen(
                          context, const SignUpScreen());
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(AppText.createAccount),
                    ))),
          ],
        ),
      ),
    );
  }
}
