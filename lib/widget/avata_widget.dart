import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final String imageUrl;

  const AvatarWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60, // Adjust size as needed
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.purple[100], // Light purple background
      ),
      child: ClipOval(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return const Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) =>
          const Icon(Icons.person, size: 40, color: Colors.grey),
        ),
      ),
    );
  }
}
