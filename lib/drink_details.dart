import 'package:coffe_app/components/quantity_widget.dart';
import 'package:coffe_app/components/toggle_widget.dart';
import 'package:coffe_app/model.dart';
import 'package:flutter/material.dart';

class DrinkDetails extends StatefulWidget {
  const DrinkDetails({super.key});

  @override
  State<DrinkDetails> createState() => _DrinkDetailsState();
}

class _DrinkDetailsState extends State<DrinkDetails> {
  final PageController _controller = PageController(
    viewportFraction: 0.5,
  );
  double _currentPage = 0;
  @override
  void initState() {
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page ?? 1;
      });
    });
    super.initState();
  }

  /// Logic
  int selectedIndex = 0;

  /// Model Accses
  final drinks = DrinkModel.drinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          /// 1 Wiget
          Positioned(
            top: 80,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      drinks[_currentPage.round()].name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      drinks[_currentPage.round()].title,
                      style: TextStyle(),
                    ),
                  ],
                ),
                Text(
                  '\$ ${drinks[_currentPage.round()].price}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          /// 2 Widget
          PageView.builder(
            controller: _controller,
            itemCount: drinks.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              final scale = 1 - (_currentPage - index).abs() * 1;
              final translaty =
                  (_currentPage - index).abs() * 365;
              return Transform.translate(
                offset: Offset(translaty, 0),
                child: Transform.scale(
                  scale: scale.clamp(0.5, 1.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            drinks[index].image,
                            height: 900,
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: 190,
                            right: 0,
                            left: 0,
                            child: Container(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),

          /// Multi Selection
          Positioned(
            bottom: 100,
            left: 7,
            right: 7,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround,
                  children: List.generate(3, (index) {
                    final labels = ["S", "M", "L"];

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        padding: EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: selectedIndex == index
                              ? Colors.orange
                              : Colors.white,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: selectedIndex == index
                                ? Colors.grey
                                : Colors.grey.shade400,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            labels[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: ToggleWidget()),
                    SizedBox(width: 30),
                    Expanded(child: QuantityWidget()),
                  ],
                ),
              ],
            ),
          ),

          /// switcher
        ],
      ),
    );
  }
}
