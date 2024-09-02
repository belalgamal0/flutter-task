import 'package:flutter/material.dart';

class PaddedScreen extends StatelessWidget {
  final Widget child;
  final double topPadding;
  final double sidePadding;
  final double bottomPadding;

  const PaddedScreen({
    super.key,
    required this.child,
    this.topPadding = 0.0,
    this.sidePadding = 0.0,
    this.bottomPadding = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          sidePadding,topPadding,sidePadding,bottomPadding,
        ),
        child: Center(child: child),
      ),
    );
  }
}
