import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
   MyButton({super.key,
   required this.onTap
   });

Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin:const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text('sign in',
          style: TextStyle(
            color: Colors.white,
          fontWeight: FontWeight.bold,
          ),
          ),
          ),
      ),
    );
  }
}