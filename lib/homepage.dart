import 'package:flutter/material.dart';
import 'package:wall/banners.dart';
import 'package:wall/utils/app_buttons.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                BannerWidget(
                  message: "borrow 10 ruppes",
                  messageDate: "10-2-24",
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: 'Enter Pages on wall..',
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          border: InputBorder.none,
                          fillColor: Colors.white),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
