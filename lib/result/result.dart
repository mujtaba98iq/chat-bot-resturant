import 'package:flutter/material.dart';

import 'package:new_mu/product/product_card.dart';

import '../home.dart';

var order = false;

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.grey[850],
            appBar: AppBar(
              title: const Text('Orders'),
              centerTitle: true,
              backgroundColor: Colors.orange,
            ),
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.orange,
                        ),
                        height: 100,
                        width: 300,
                        child: Center(
                          child: Text(
                            "The Price is :${total1}".toString(),
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                        )),
                    InkWell(
                      onTap: () {
                        if (total1 != 0) {
                          setState(() {
                            order = true;
                          });
                          selectedScreen(context, 5);
                        }
                      },
                      child: Container(
                          margin: const EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.orange,
                          ),
                          height: 100,
                          width: 300,
                          child: const Center(
                            child: Text(
                              "Complete the purchase",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            ),
                          )),
                    )
                  ]),
            )));
  }
}
