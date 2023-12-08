import 'package:cuidapet_mobile/app/core/ui/extensions/size_screen_extension.dart';
import 'package:flutter/material.dart';

class RoudedButtonWithIcon extends StatelessWidget {
  const RoudedButtonWithIcon({
    super.key,
    required this.onTap,
    this.width,
    this.color,
    required this.icon,
    required this.text,
  });

  final GestureTapCallback onTap;
  final double? width;
  final Color? color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: 45.h,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, right: 2.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 20.w,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.00),
              child: VerticalDivider(
                color: Colors.white,
                thickness: 2,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
