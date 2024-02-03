import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final Widget child;

  const InputCard({required this.child, super.key});
// input card
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.black, width: 8),
      ),
      child: child,
    );
  }
}
