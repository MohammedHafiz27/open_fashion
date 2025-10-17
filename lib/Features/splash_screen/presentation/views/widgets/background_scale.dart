import 'package:flutter/material.dart';

class BackgroundScale extends StatelessWidget {
  const BackgroundScale({
    super.key,
    required Animation<double> scaleAnimation,
  }) : _scaleAnimation = scaleAnimation;

  final Animation<double> _scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) => ScaleTransition(
        scale: _scaleAnimation,
        child: Container(
          decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
