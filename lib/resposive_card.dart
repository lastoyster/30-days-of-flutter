import 'package:flutter/material.dart';

class CenteredCardLayout extends StatelessWidget {
  final double maxWidth;
  final Widget child;

  const CenteredCardLayout({
    Key? key,
    this.maxWidth = 500,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: SizedBox(
          width: maxWidth,
          child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
