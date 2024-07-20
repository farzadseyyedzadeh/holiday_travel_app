import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class Holiday extends StatelessWidget {
  const Holiday({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: HomeScreen(),
        ),
      ),
    );
  }
}
