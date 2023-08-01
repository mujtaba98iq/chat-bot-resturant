import 'package:flutter/material.dart';
import 'package:new_mu/MainCourse.dart';
import 'package:new_mu/product/productMain.dart';

List image = [];
int c = 0;
int total1 = 0;
bool loading = false;

class productCard extends StatefulWidget {
  final Product title;
  final int itemindex;
  final Product product;
  final Product price;
  final Product counter;

  const productCard(
      {super.key,
      required this.itemindex,
      required this.product,
      required this.title,
      required this.price,
      required this.counter});

  @override
  State<productCard> createState() => _productCardState();
}

class _productCardState extends State<productCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 190,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 186,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 160,
              width: 200,
              child: Image.network(
                widget.product.image,
                fit: BoxFit.fitWidth,
                frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                  return child;
                },
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 1,
              width: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    widget.product.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20, right: 20),
                      child: Text(
                        '$total1\$',
                        style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 240, 217, 15)),
                      )),
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c = widget.product.counter + 1;
                                total1 = total1 + widget.product.price;
                              });
                            },
                            child: const Icon(Icons.add)),
                      ),
                      Container(
                          child: loading == true
                              ? const CircularProgressIndicator()
                              : null),
                      Container(
                        margin: const EdgeInsets.only(left: 80),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c = widget.product.counter - 1;
                                total1 = total1 - widget.product.price;
                                if (total1 <= 0) {
                                  total1 = 0;
                                }
                              });
                            },
                            child: const Icon(
                              Icons.minimize_outlined,
                              size: 20,
                            )),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(22)),
                      child: Text(
                        ' price : \$${widget.product.price}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
