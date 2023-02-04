import 'package:dw9_delivery_app/app/repositories/auth/auth_repository.dart';
import 'package:dw9_delivery_app/app/repositories/auth/auth_repository_impl.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../rest_client/custom_dio.dart';

class ApplicationBinding extends StatelessWidget {
  final Widget child;

  const ApplicationBinding({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (context) => CustomDio(),
        ),
        Provider<AuthRepository>(
          create: (context) => AuthRepositoryImpl(dio: context.read()),
        )
      ],
      child: child,
    );
  }
}
