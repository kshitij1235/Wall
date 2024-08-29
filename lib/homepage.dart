import 'package:flutter/material.dart';
import 'package:wall/banners.dart';
import 'package:wall/utils/mytextbox.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Center(child: Text("W A L L")),
        backgroundColor: Colors.grey.shade900,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ChatBubble(message: "dasda", isSentByMe: true),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: MyTextBox(
                      controller: _textcontroller,
                      hinttext: "Slam on the wall...",
                      obscure: false,
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    splashColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        color: Colors.grey.shade900,
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.send, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
