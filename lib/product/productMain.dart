import 'package:flutter/cupertino.dart';

class Product extends StatelessWidget {
  final int id, price, counter;
  final String image, title;

  Product(
      {required this.id,
      required this.price,
      required this.title,
      required this.image,
      required this.counter});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

// list of products
List<Product> products = [
  Product(
    id: 1,
    price: 10,
    title: 'Burgar',
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm1.jpg?alt=media&token=dd42e71f-ac6b-4608-a550-d92d963f4fe4",
    counter: 0,
  ),
  Product(
    id: 2,
    price: 15,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm2.jpg?alt=media&token=a3554bdb-5660-48ce-a33b-45af94b30191",
    title: ' Chicken Zenger',
    counter: 0,
  ),
  Product(
    id: 3,
    price: 25,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm3.jpg?alt=media&token=3e2f0269-f895-408c-8aa5-154fc81b42dd",
    title: ' Meet Cow',
    counter: 0,
  ),
  Product(
    id: 4,
    price: 7,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm4.jpg?alt=media&token=3b5197c9-9d2b-40f8-a442-f707ab4b0309",
    title: 'Burgar With CHesse',
    counter: 0,
  ),
  Product(
    id: 5,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm5.jpg?alt=media&token=c4a09dde-784b-43e8-8260-0cb2e25ba882",
    title: 'Burgar With Chicken',
    counter: 0,
  ),
  Product(
    id: 6,
    price: 30,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm6.jpg?alt=media&token=1e6309ab-ebde-41cb-ab2d-b8002c2a1121",
    title: 'Fish',
    counter: 0,
  ),
  Product(
    id: 7,
    price: 20,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm7.jpg?alt=media&token=92af8e08-8970-407f-9523-196b1977a492",
    title: 'Pizza',
    counter: 0,
  ),
  Product(
    id: 8,
    price: 30,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm8.jpg?alt=media&token=df699e0a-dd43-432f-8c3e-ac21b4a873de",
    title: 'Meet Fire ',
    counter: 0,
  ),  Product(
    id: 9,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm9.jpg?alt=media&token=67d036a4-fe6d-42c2-9245-43388eb22302",
    title: 'Spaketie',
    counter: 0,
  ),
  Product(
    id: 10,
    price: 15,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Mainimage%2Fm10.jpg?alt=media&token=c149a72f-3ad0-45b0-b0b2-45352bf06fe5",
    title: 'Meat Tech',
    counter: 0,
  ),

];
List Drink = [
  Product(
    id: 1,
    price: 5,
    title: 'Coffee',
    image: 'https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd1.jpg?alt=media&token=e263b5f5-b746-4553-b642-fed3156b4bce',
    counter: 0,
  ),
  Product(
    id: 2,
    price: 3,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd2.jpg?alt=media&token=b66b4d41-a64e-4629-bdd9-d4a5948d2063",
    title: 'pomegranate',
    counter: 0,
  ),
  Product(
    id: 3,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd3.jpg?alt=media&token=284298d3-0c3f-4d83-85ca-429f369fd87f",
    title: 'Orange',
    counter: 0,
  ),
  Product(
    id: 4,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd4.jpg?alt=media&token=f84e0efe-690c-43e6-8b47-85b520a8d646",
    title: 'Apple',
    counter: 0,
  ),
  Product(
    id: 5,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd5.jpg?alt=media&token=dacebedd-483f-4cc1-9c1c-bc93ad2eec02",
    title: 'Grapes',
    counter: 0,
  ),
  Product(
    id: 6,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd6.jpg?alt=media&token=4cd6f061-e271-41e7-ba5a-e7611bef1765",
    title: 'raisins',
    counter: 0,
  ),
  Product(
    id: 7,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Drinkingimage%2Fd7.jpg?alt=media&token=89b6a706-63e2-49bf-bb1c-13554c382493",
    title: 'watermelon',
    counter: 0,
  ),
];
List Apptizers = [
  Product(
    id: 1,
    price: 7,
    title: 'Hummus',
    image: 'https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa1.jpg?alt=media&token=1cf36650-4e04-42bd-be51-fd3d29a7053b',
    counter: 0,
  ),
  Product(
    id: 2,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa2.jpg?alt=media&token=f399b86c-8c82-462b-abe9-cbff9dce590f",
    title: 'Jagik',
    counter: 0,
  ),
  Product(
    id: 3,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa3.jpg?alt=media&token=9555a98d-84f6-4a73-a8c9-de8d0def1213",
    title: 'Cucumber salad ',
    counter: 0,
  ),
  Product(
    id: 4,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa4.jpg?alt=media&token=225dcd33-d985-4e48-b46a-9b0f4982fa00",
    title: 'Biscuit with sauce',
    counter: 0,
  ),
  Product(
    id: 5,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa5.jpg?alt=media&token=ba5e8e7f-0e2f-4901-affc-98f45797d2b6",
    title: 'Public authority',
    counter: 0,
  ),
  Product(
    id: 6,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa6.jpg?alt=media&token=f6b78b4c-9018-43ce-b36a-0c98688b946d",
    title: 'Tomato salad',
    counter: 0,
  ),
   Product(
    id: 7,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa7.jpg?alt=media&token=fbc2c1af-cdf2-41e8-b929-181f7bf506d7",
    title: 'Tomato salad',
    counter: 0,
  ),
   Product(
    id: 8,
    price: 5,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Appetizersimage%2Fa8.jpg?alt=media&token=482ac5f6-348f-499a-8275-ea81812f2933",
    title: 'Tomato salad',
    counter: 0,
  ),
];
List Sweet = [
  Product(
    id: 1,
    price: 10,
    title: 'Friute Cake',
    image: 'https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs1.jpg?alt=media&token=e8066cb0-ecb4-4590-b398-3cb53cfde30f',
    counter: 0,
  ),
  Product(
    id: 2,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs2.jpg?alt=media&token=03e715c2-aa57-45d6-b71c-f9d60179a791",
    title: 'knafeh',
    counter: 0,
  ),
  Product(
    id: 3,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs3.jpg?alt=media&token=de84c73d-7889-413c-9274-31c9042b90a4",
    title: 'Dumpling',
    counter: 0,
  ),
  Product(
    id: 4,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs8.jpg?alt=media&token=6e652272-b97c-4f70-80a1-fe673c3c3045",
    title: 'Znood Al-Sitt',
    counter: 0,
  ),
  Product(
    id: 5,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs5.jpg?alt=media&token=7f33edb4-310e-4c44-a83e-da9bcef0c147",
    title: 'Floats',
    counter: 0,
  ),
  Product(
    id: 6,
    price: 10,
    image: "https://firebasestorage.googleapis.com/v0/b/chatbot-8b079.appspot.com/o/Sweetsimage%2Fs7.jpg?alt=media&token=2e6f5446-b6bc-4dad-bedf-071b2811be67",
    title: 'Ice_Cream',
    counter: 0,
  ),
];
