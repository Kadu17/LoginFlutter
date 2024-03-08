import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar

      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        // elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            style: TextStyle(
              fontSize: 30,
            ),
            children: [
              TextSpan(text: 'SNKRS', style: TextStyle(color: Colors.black)),
              TextSpan(
                text: 'NTC',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
        ),
        actions: [
          Badge(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),

      // Campo de pesquisa

      // Categorias

      // Grid
    );
  }
}
