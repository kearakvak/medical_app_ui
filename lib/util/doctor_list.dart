import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {
  DoctorList(
      {this.DoctorName, this.text, this.photoDoctor, required this.Number});
  final photoDoctor;
  final DoctorName;
  final text;
  double Number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade100,
        ),
        child: Column(
          children: [
            //picture of doctor
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                photoDoctor ?? 'assets/images/surgeon (1).png',
                height: 100,
              ),
            ),
            //rating out of 5
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow.shade500,
                ),
                Text(Number.toString() ?? "4.9"),
              ],
            ),
            Text(
              DoctorName ?? "DR. Aalisa",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text ?? "#############",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
