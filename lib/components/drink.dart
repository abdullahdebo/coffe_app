import 'package:flutter/material.dart';

class Drink extends StatelessWidget {
  const Drink({
    super.key,
    required this.image,
    required this.name,
    required this.title,
  });

  final String image;
  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 30,
          ),
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.white,
            child: Padding(
              padding: EdgeInsetsGeometry.symmetric(
                vertical: 70,
                horizontal: 3,
              ),
              child: Row(),
            ),
          ),
        ),
        Positioned(
          top: -10,
          left: 20,
          bottom: 49,
          child: Stack(
            alignment: AlignmentGeometry.bottomCenter,
            children: [
              Container(
                width: 70,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 30,
                      spreadRadius: 2,
                    ),
                  ],
                ),
              ),
              Image.asset(image, fit: BoxFit.contain),
            ],
          ),
        ),
        Positioned(
          top: 70,
          right: 90,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        Positioned(
          top: 70,
          right: 40,
          bottom: 0,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black54),
            ),
            child: Icon(
              Icons.arrow_forward,
              size: 19,
              color: Colors.black45,
            ),
          ),
        ),
      ],
    );
  }
}
