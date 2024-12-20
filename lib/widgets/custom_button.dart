import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isOrange;
  final bool isWide;
  // final VoidCallback onPressed;

  const CustomButton({
    required this.label,
    this.isWide = false,
    this.isOrange = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: isWide ? MediaQuery.of(context).size.width * 0.8 : null,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: isOrange ? 0 : 1.6,
          ),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
            colors: <Color>[
              isOrange ? Colors.orange.shade900 : Colors.white,
              isOrange ? Colors.orange.shade900 : Colors.grey.shade200,
            ],
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              blurRadius: 6,
              spreadRadius: 2,
              offset: Offset(4, 2),
              color: Colors.black54,
            ),
          ],
          borderRadius: BorderRadius.circular(20), // Adjusted border radius
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isOrange ? Colors.white : Colors.black54,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
