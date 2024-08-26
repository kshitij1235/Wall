import 'package:flutter/material.dart';
import 'package:wall/utils/app_buttons.dart';

class BannerWidget extends StatelessWidget {
  
  final String message;
  final String messageDate;
  BannerWidget({
    
    super.key,
    required this.message,
    required this.messageDate,  
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF424242), // Colors.grey.shade800
                ),
              ),
              const SizedBox(height: 8),
              Text(
                messageDate,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  AppButtons(
                    icon: Icon(Icons.edit, color: Colors.white),
                    color: Colors.blueAccent,
                  ),
                  SizedBox(width: 15),
                  AppButtons(
                    icon: Icon(Icons.delete, color: Colors.white),
                    color: Colors.redAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}