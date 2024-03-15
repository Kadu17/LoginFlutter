import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  const CategoryTile({super.key, required this.category, required this.isSelected});

  final String category;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isSelected ? Colors.white : Colors.transparent,
        ),
        child: Text(
          category,
          style:  TextStyle(
            color: isSelected ? Colors.blue : Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: isSelected ? 16 : 14
          ),  
        ),
      ),
    );
  }
}