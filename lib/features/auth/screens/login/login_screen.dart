import 'package:d_store/common/styles/spacing_style.dart';
import 'package:d_store/features/auth/screens/login/widgets/login_divider.dart';
import 'package:d_store/features/auth/screens/login/widgets/login_footer.dart';
import 'package:d_store/features/auth/screens/login/widgets/login_form.dart';
import 'package:d_store/features/auth/screens/login/widgets/login_header.dart';
import 'package:d_store/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: SpacingStyle.loginPagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            LoginHeader(),
            // Form
            LoginForm(),
            // Devider
            LoginDivider(),
            // footer
            SizedBox(height: AppSizes.spaceBtwItems),
            LoginFooter()
          ],
        ),
      ),
    );
  }
}
