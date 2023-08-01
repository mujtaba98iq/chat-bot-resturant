import 'package:flutter/material.dart';
import 'package:new_mu/product/productMain.dart';
import 'package:new_mu/result/result.dart';
import 'home.dart';
import 'product/product_card.dart';

class Maincourse extends StatefulWidget {
  const Maincourse({super.key});

  @override
  State<Maincourse> createState() => _MaincourseState();
}

class _MaincourseState extends State<Maincourse> {
  bool isfav = true;

  void result() {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return const Result();
    }));
  }

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
            title: const Text('Main Course'),
            centerTitle: true,
            actions: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$total1\$',style: TextStyle(fontSize: 30,color: Color.fromARGB(255, 240, 217, 15)),),
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
                      itemCount: products.length,
                      itemBuilder: (con, index) => productCard(
                            itemindex: index,
                            product: products[index],
                            title: products[index],
                            price: products[index],
                            counter: products[index],
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

/*

Image.asset('images/Mainimage/p0.jpg'),
Image.asset('images/Mainimage/p8.jfif'),

SizedBox(height: 20,)
,             Image.asset('images/Mainimage/p9.jfif'),
Image.asset('images/Mainimage/p10.jfif'),
Image.asset('images/Mainimage/p11.jfif'),
Image.asset('images/Mainimage/p13.jfif'),
Image.asset('images/Mainimage/p14.jpg'),
Image.asset('images/Mainimage/p15.jfif'),
SizedBox(height: 20,),
          */
