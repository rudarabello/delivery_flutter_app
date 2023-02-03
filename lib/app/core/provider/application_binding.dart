import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import '../rest_client/custom_dio.dart';

class ApplicationBinding extends StatelessWidget {
  final Widget child;

  const ApplicationBinding({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      Provider(
        create: (context) => CustomDio(),
      )
    ]);
  }
}
