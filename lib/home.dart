import 'package:flutter/material.dart';
import 'package:new_mu/Sweets.dart';
import 'package:new_mu/MainCourse.dart';
import 'package:new_mu/Appetizers.dart';
import 'package:new_mu/authentication/signIn.dart';
import 'package:new_mu/authentication/signUp.dart';

import 'package:new_mu/chatbot/chatbot.dart';
import 'drinking.dart';

void selectedScreen(BuildContext ctx, int i) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (conr) {
    return i == 1
        ? const Maincourse()
        : i == 2
            ? const Drinking()
            : i == 3
                ?  const Appetizers()
                : i == 4
                    ? const Sweets()
                    : i == 5
                        ? const Chatbot()
                        : i == 6
                            ? const SignUp()
                            : i == 7
                                ? const SignIn()
                                : const Home();
  }));
}

int pricChicken = 30;
int priceMeet = 20;
int priceZenger = 30;
int pricTekia = 56;
int priceMeetFire = 100;
int priceSpaketie = 50;

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  List<Map<String, dynamic>> messages = [];

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
  var t = Colors.pink;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.grey[850],
        drawer: Drawer(
            backgroundColor: Colors.grey[850],
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                    onTap: () => selectedScreen(context, 1),
                    child: designDrawer('images/Mainimage/m4.jpg')),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => selectedScreen(context, 3),
                    child: designDrawer('images/Appetizersimage/a8.jpg')),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => selectedScreen(context, 4),
                    child: designDrawer('images/Sweetsimage/s1.jpg')),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => selectedScreen(context, 2),
                    child: designDrawer('images/Drinkingimage/d3.jpg')),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                    onTap: () => selectedScreen(context, 5),
                    child: designDrawer('images/chatBot/chatBot.jpg')),
              ],
            )),
        appBar: AppBar(
          title: const Text(
            ' Restaurant',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold, 
            ),
          ),
          centerTitle: true,
          actions: [
             InkWell(child:const Icon(Icons.exit_to_app,size: 30,color: Colors.black,),
             onTap: () => selectedScreen(context, 7),)
          ],
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(right: 10, left: 10),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: ListView(scrollDirection: Axis.vertical, children: [
            InkWell(
                onTap: () => selectedScreen(context, 1),
                child: const Icon(
                  Icons.fastfood,
                  size: 300,
                  color: Colors.cyan,
                )),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                onTap: () => selectedScreen(context, 2),
                child: const Icon(
                  Icons.local_drink_rounded,
                  size: 300,
                  color: Colors.red,
                )),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => selectedScreen(context, 3),
              child: const Icon(
                Icons.restaurant_menu_outlined,
                size: 300,
                color: Colors.purple,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () => selectedScreen(context, 4),
              child: const Icon(
                Icons.cake,
                size: 300,
                color: Colors.orange,
              ),
            )
          ]),
        ));
  }

  Container designDrawer(image) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.only(top: 20),
      height: 110,
      width: 280,
      child: Image.asset(
        image,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

//build the stars
