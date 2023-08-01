import 'package:flutter/material.dart';
import 'package:new_mu/Order.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

import '../product/product.dart';

class ShowSweets extends StatelessWidget {
  @override
  List<Product> productList = [
    Product(
      "images/Sweetsimage/s1.jpg",
    ),
    Product(
      "images/Sweetsimage/s2.jpg",
    ),
    Product(
      "images/Sweetsimage/s3.jpg",
    ),
    Product(
      "images/Sweetsimage/s4.jpg",
    ),
    Product(
      "images/Sweetsimage/s5.jpg",
    ),
    Product(
      "images/Sweetsimage/s6.jpg",
    ),
    Product(
      "images/Sweetsimage/s7.jpg",
    ),
    Product(
      "images/Sweetsimage/s8.jpg",
    ),
    Product(
      "images/Sweetsimage/s9.jpg",
    ),
    Product(
      "images/Sweetsimage/s10.jpg",
    ),
  ];

  Widget _buildItemList(BuildContext context, int index) {
    Product product = productList[index];
    if (index == productList.length)
      return  const Center(
        child: CircularProgressIndicator(),
      );
    return Container(
      width: 350,
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 600,
            width: 400,
            color: Colors.yellow,
            child: Image.asset(
              product.imagePath,
              fit: BoxFit.cover,
              width: 150,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void order() {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) {
        return  const Order();
      }));
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions:  [
          InkWell(
            onTap:()=>order() ,
            child: const Icon(
              Icons.shopping_cart,
              size: 40,
              color: Colors.grey,
            ),
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25))),
        title: const Text(
          'Main Course',
          style: TextStyle(
              fontSize: 20, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ScrollSnapList(
                itemBuilder: _buildItemList,
                itemSize: 350,
                dynamicItemSize: true,
                onReachEnd: () {
                  print('Done!');
                },
                itemCount: productList.length,
                onItemFocus: (int) {},
              )),
        ],
      ),
    );
  }
}
