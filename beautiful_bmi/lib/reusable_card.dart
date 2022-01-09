import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget cardChild;
  final VoidCallback? onPress;

  const ReusableCard({required this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          boxShadow: const [
             BoxShadow(
               offset: Offset(-10, 10),
              spreadRadius: 3.0,
              blurRadius: 7,
              color: Color(0xFFD6D6D6),
            ),
          ],
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
      ),
    );
  }
}
