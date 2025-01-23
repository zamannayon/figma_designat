import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String image, title;

  const EventCard({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(image, height: 80, width: 120, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title),
          ),
        ],
      ),
    );
  }
}
