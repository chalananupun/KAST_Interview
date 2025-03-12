import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const IconButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // Background color
        foregroundColor: Colors.black, // Text & icon color
        elevation: 1, // Subtle shadow
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Rounded edges
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      icon: const Icon(Icons.more_horiz_outlined, size: 20),
      label: const Text(
        "More",
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
