import 'package:dw9_delivery_app/app/core/provider/application_binding.dart';
import 'package:dw9_delivery_app/app/core/ui/theme/theme_config.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'pages/auth/login/login_router.dart';
import 'pages/auth/register/register_router.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: "Delivery App",
        theme: theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => const HomeRouter(),
          '/auth/login': (_) => const LoginRouter(),
          '/auth/register': (_) => const RegisterRouter(),
        },
      ),
    );
  }
}
