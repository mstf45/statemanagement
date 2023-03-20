import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'class/newdata.dart';
import 'models/providerspage.dart';

void main() {
  runApp(
    ChangeNotifierProvider<StateData>(
      child: const MyApp(),
      create: (context) => StateData(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AnaPages(),
        );
  }
}