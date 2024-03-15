import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:flutter/widgets.dart';
import 'package:flutterlogin/pages/auth/home/components/category_tile.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'JORDAN',
    'LIFESTYLE',
    'DUNK',
    'AIR FORCE',
    'AIR MAX',
  ];

  // ignore: non_constant_identifier_names
  String SelectedCategory = 'JORDAN';

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
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},

              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Badge(
                  backgroundColor: Colors.blue,
                  label: const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // Campo de pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...' ,
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(Icons.search, size: 21,),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(60),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none
                )
                )
              ),
            ),
          ),
          // Categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return CategoryTile(
                onPressed: () {
                  setState(() {
                    SelectedCategory = categories[index];
                  });
                },
                category: categories[index],
                isSelected: categories[index] == SelectedCategory,
              );
            },
            separatorBuilder: (_, index) => const SizedBox(width: 10),
            itemCount: categories.length,
            
          ),
        ),
        ],
      ),

      
        

      // Grid
    );
  }
}
