import 'package:flutter/material.dart';

import '../widgets/app_image.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future<dynamic> navigateTo(
  Widget page, {
  bool removeHistory = false,
  bool isReplacement = false,
}) {
  final route = PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );

  if (isReplacement) {
    return Navigator.pushReplacement(navigatorKey.currentContext!, route);
  } else {
    return Navigator.pushAndRemoveUntil(
      navigatorKey.currentContext!,
      route,
      (route) => !removeHistory,
    );
  }
}

void showToast(String message) {
  ScaffoldMessenger.of(
    navigatorKey.currentState!.context,
  ).showSnackBar(SnackBar(content: Text(message)));
}

void showCustomDialog(
  Function() onButtonPressed, {
  required String title,
  required String subTitle,
  required String buttonTitle,
}) {
  showDialog(
    context: navigatorKey.currentState!.context,
    builder: (context) => Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const AppImage('correct.svg', width: 100, height: 100),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff434C6D),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              subTitle,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD75D72),
                ),
                onPressed: onButtonPressed,
                child: Text(buttonTitle),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
