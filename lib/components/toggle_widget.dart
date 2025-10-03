// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({super.key});

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool isIced = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          _buildTogbleSelection('Hot', !isIced),
          _buildTogbleSelection('Iced', isIced),
        ],
      ),
    );
  }

  Widget _buildTogbleSelection(label, bool selected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isIced = label == 'Iced';
        });
      },
      child: AnimatedContainer(
        curve: Curves.easeIn,
        padding: EdgeInsets.symmetric(horizontal: 20),
        alignment: Alignment.bottomCenter,
        duration: Duration(milliseconds: 270),
        decoration: BoxDecoration(
          color: selected ? Colors.white : Colors.grey[300],
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            label,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
