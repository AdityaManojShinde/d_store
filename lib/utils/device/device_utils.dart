import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// add all device related function in this class

class DeviceUtils {
  static double screenHeight(BuildContext ctx) {
    return MediaQuery.of(ctx).size.height;
  }

  static double screenWidth(BuildContext ctx) {
    return MediaQuery.of(ctx).size.width;
  }

  static bool isDarkMode(BuildContext ctx) {
    var brightness = MediaQuery.of(ctx).platformBrightness;
    return brightness == Brightness.dark;
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  static void navigateReplace(BuildContext context, Widget screen) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }

  static void launchLink(
      {required String url, required LaunchMode mode}) async {
    try {
      final link = Uri.parse(url);
      await launchUrl(link, mode: mode);
    } catch (e) {
      throw "Could not lauch $url : error - $e";
    }
  }
}
