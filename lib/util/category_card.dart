import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({this.image, this.text});
  final image;
  final text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            10,
          ),
          color: Colors.yellow.shade100,
        ),
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset(
              image ?? "assets/images/animation/tooth (1).png",
              height: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              text ?? "Dentist",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
