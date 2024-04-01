import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme light = TextTheme(
    // Headlines
    headlineLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.black),
    // Titles
    titleLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.black),

    // body
    bodyLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.black),

    //label
    labelLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );

  // Dark Theme
  static TextTheme dark = TextTheme(
    // Headlines
    headlineLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.bold,
        color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.white),
    // Titles
    titleLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w400,
        color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w600,
        color: Colors.white),

    // body
    bodyLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.w500,
        color: Colors.white),

    //label
    labelLarge: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.white),
    labelMedium: const TextStyle().copyWith(
        fontFamily: "Poppins",
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
  );
}
