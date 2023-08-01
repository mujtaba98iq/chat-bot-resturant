import 'package:flutter/material.dart';
import 'package:new_mu/Sweets.dart';
import 'package:new_mu/MainCourse.dart';
import 'package:new_mu/Appetizers.dart';

import 'package:new_mu/chatbot/chatbot.dart';
import 'drinking.dart';

int pricChicken = 30;
int priceMeet = 20;
int priceZenger = 30;
int pricTekia = 56;
int priceMeetFire = 100;
int priceSpaketie = 50;

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

  void selectedScreen(BuildContext ctx, int i) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (conr) {
      return i == 1
          ? const Maincourse()
          : i == 2
              ? const Drinking()
              : i == 3
                  ? const Appetizers()
                  : i == 4
                      ? const Sweets()
                      : const Chatbot();
    }));
  }

  // ignore: non_constant_identifier_names
  Widget DesignButton(
      counterType, value, nameMassage, nameImage, nameType, priceType) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {});
          _controller.text = nameMassage;

          _controller.clear();
          priceType = counterType;
        },
      ),
    );
  }

  List<String> name = ['Main_Course', 'Drinking', 'Apptizers', 'Sweet'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' Restaurant'),
          centerTitle: true,
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(right: 10, left: 10),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: ListView(scrollDirection: Axis.vertical, children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () => selectedScreen(context, 1),
                child: designContainer("Main Course", Icons.restaurant)),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () => selectedScreen(context, 2),
                child: designContainer(
                    "Drink", Icons.emoji_food_beverage_rounded)),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () => selectedScreen(context, 3),
              child: designContainer(
                  "Appetizers", Icons.local_restaurant_outlined),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
                onTap: () => selectedScreen(context, 4),
                child: designContainer("Sweets", Icons.no_drinks_sharp)),
          ]),
        ));
  }

  Container designContainer(text, icon) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(50)),
      height: 200,
      width: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            width: 20,
          ),
          Icon(
            icon,
            size: 40,
          )
        ],
      ),
    );
  }
}

//build the stars
