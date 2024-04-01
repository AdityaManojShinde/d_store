import 'package:d_store/utils/constants/colors.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:d_store/utils/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    label: FittedBox(child: Text(AppText.firstName)),
                    prefixIcon: Icon(Iconsax.user),
                    //labelText: AppText.firstName
                  ),
                ),
              ),
              const SizedBox(width: AppSizes.spaceBtwItems),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    label: FittedBox(child: Text(AppText.lastName)),
                    prefixIcon: Icon(Iconsax.user),
                    // labelText: AppText.lastName,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.user_edit),
                labelText: AppText.username),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct), labelText: AppText.eMail),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.call), labelText: AppText.phoneNumber),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash),
                labelText: AppText.loginFormPassword),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          FittedBox(
            child: Row(
              children: [
                SizedBox(
                    height: 24,
                    width: 24,
                    child: Checkbox(value: true, onChanged: (value) {})),
                const SizedBox(width: AppSizes.spaceBtwItems),
                Text.rich(TextSpan(children: [
                  TextSpan(
                      text: AppText.iAgreeTo,
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: AppText.privacyPolicy,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.secondary)),
                  TextSpan(
                      text: AppText.and,
                      style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(
                      text: AppText.termsOfUse,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: AppColors.secondary)),
                ])),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    context.go('/verify_email');
                  },
                  child: const Text(AppText.createAccount))),
        ],
      ),
    );
  }
}
