import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashLoad extends StatelessWidget {
  const SplashLoad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: context.width * 0.75),
        child: Container(
          height: context.height * 0.6,
          width: 440,
        ),
      ),
    );
  }
}
