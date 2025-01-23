import 'package:flutter/material.dart';

class ServicePackage extends StatelessWidget {
  final String title, price, originalPrice, discount, image;

  const ServicePackage({super.key,
    required this.title,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Column(
          children: [

            Image.asset(image, height: 100,fit: BoxFit.fill,alignment: Alignment.bottomLeft,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, maxLines: 2, overflow: TextOverflow.ellipsis),
                  const SizedBox(height: 5),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        originalPrice,
                        style: const TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(discount, style: const TextStyle(color: Colors.green)),
                    ],
                  ),
                  const SizedBox(height: 5),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}