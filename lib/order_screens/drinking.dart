import 'package:flutter/material.dart';
import 'package:new_mu/home.dart';

import 'package:new_mu/product/productMain.dart';
import 'package:new_mu/result/result.dart';
import 'product/product_card.dart';

class Drinking extends StatefulWidget {
  const Drinking({super.key});

  @override
  State<Drinking> createState() => DrinkingState();
}

class DrinkingState extends State<Drinking> {
  bool isfav = true;

  void result() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const Result();
    }));
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: InkWell(
            onTap: () => selectedScreen(context, 5),
            child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(50)),
                child: const CircleAvatar(
                  backgroundImage: AssetImage('images/chatBot/chatBot.jpg'),
                ))),
        backgroundColor: Colors.orange,
        appBar: AppBar(
            backgroundColor: Colors.grey,
            title: const Text('Drinks'),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$total1\$',
                      style: TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 240, 217, 15)),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        setState(() {
                          result();
                        });
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 40,
                        color: Colors.grey[850],
                      ))
                ],
              )
            ]),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 70),
                    decoration: BoxDecoration(
                        color: Colors.grey[850],
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                  ),
                  ListView.builder(
                      itemCount: Drink.length,
                      itemBuilder: (con, index) => productCard(
                            itemindex: index,
                            product: Drink[index],
                            title: Drink[index],
                            price: Drink[index],
                            counter: Drink[index],
                          )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
