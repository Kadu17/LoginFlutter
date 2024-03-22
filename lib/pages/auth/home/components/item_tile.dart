import 'package:flutter/material.dart';
import 'package:flutterlogin/models/item_model.dart';
import 'package:flutterlogin/pages/auth/home/product/product_screen.dart';
import 'package:flutterlogin/services/utils_services.dart';

class ItemTile extends StatelessWidget {
  final ItemModel item;


  ItemTile({super.key, required this.item});
  
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (c){
              return const ProductScreen();
            }));
          },
          child: Card(
            elevation: 10,
            shadowColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(child: Image.asset(item.imgUrl)),
              
                  Text(item.itemName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
          
                      Text(
                          item.price.toString(),
                          // utilsServices.priceToCurrency(item.price),
                          style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.blue
                        ),
                      ),
                ]),
            ),
          ),
        ),

        Positioned(
          top: 6,
          right: 6,
          
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 40,
              width: 35,
            
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  topRight: Radius.circular(20),
                )
              ),
            
              child: const Icon(
                Icons.add_shopping_cart_outlined,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}