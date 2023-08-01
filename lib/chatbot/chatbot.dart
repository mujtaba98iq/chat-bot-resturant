import 'package:flutter/material.dart';
import 'package:dialog_flowtter/dialog_flowtter.dart';
import 'package:new_mu/Messages.dart';
import 'package:new_mu/result/result.dart';

// ignore: unused_import

late DialogFlowtter dialogFlowtter;

List<Map<String, dynamic>> messages = [];

class Chatbot extends StatefulWidget {
  const Chatbot({Key? key}) : super(key: key);

  @override
  State<Chatbot> createState() => _ChatbotState();
}

class _ChatbotState extends State<Chatbot> {
  bool isUserMessage = true;

  @override
  void initState() {
    DialogFlowtter.fromFile().then((instance) => dialogFlowtter = instance);
    super.initState();
  }

  final TextEditingController _controller = TextEditingController();

// ignore: avoid_types_as_parameter_names

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: const Text(
          'Bot',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        children: [
          Expanded(child: MessagesScreen(messages: messages)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            color: Colors.purple,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    if (order == true) {
                      _controller.text = "Complete the purchase";
                      sendMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: order == true ? Colors.grey[850] : Colors.purple,
                    ),
                    child: Text("Comlete",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color:
                                order == true ? Colors.white : Colors.purple)),
                  ),
                ),
                Expanded(
                    child: TextField(
                  controller: _controller,
                  style: const TextStyle(color: Colors.white),
                )),
                IconButton(
                    onPressed: () {
                      sendMessage(_controller.text);
                      _controller.clear();
                    },
                    icon: const Icon(Icons.send)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) {
      print("Empty");
    } else if (text == text) {
      setState(() {
        addMessage(Message(text: DialogText(text: [text])), true);
      });

      DetectIntentResponse response = await dialogFlowtter.detectIntent(
          queryInput: QueryInput(text: TextInput(text: text)));

      setState(() {
        addMessage(response.message!);
      });
    }
  }

  addMessage(Message message, [bool isUserMessage = false]) {
    messages.add({'message': message, 'isUserMessage': isUserMessage});
  }
}
