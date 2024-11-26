import 'package:flutter/material.dart';

class CustomSquareButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color color;
  final double dimension;

  const CustomSquareButton({
    super.key,
    required this.child,
    required this.color,
    required this.onPressed,
    required this.dimension
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: dimension,
        width: dimension,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.grey,
              width: 1
            ),
            borderRadius: BorderRadius.circular(2),
          )
        ),
        child: Center(child: child),
        
      ),
    );
  }
}
class CustomRoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  const CustomRoundedButton({
    super.key, 
    required this.onPressed, 
    required this.text}
    );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey[100]!,width: 1)
        ),
        child: Text(text),
      
      ),
    );
  }
}