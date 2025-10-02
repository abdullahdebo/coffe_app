import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 100),

            /// our drink
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 30,
                  ),
                  child: Card(
                    elevation: 3,
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
                          borderRadius: BorderRadius.circular(
                            100,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade900,
                              blurRadius: 30,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/drinks/Chocolate.png',
                        fit: BoxFit.contain,
                      ),
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
                        'Chocolate',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '20 flover of your drinks',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
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
            ),
          ],
        ),
      ),
    );
  }
}
