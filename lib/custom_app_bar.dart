import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String greeting;
  final String heading;
  const CustomAppBar({super.key,required this.greeting,required this.heading});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                greeting,
              ),
              Text(
                heading,
              )
            ],
          ),
          const Row(
            children: [
              SizedBox(width: 8,),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.account_circle,
                  color: Colors.white,
                  size: 20, // Set icon size relative to radius
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

