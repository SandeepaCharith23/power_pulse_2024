import 'package:flutter/material.dart';
import 'package:power_pulse_2024/constants/colors.dart';

class ExcersiseCard extends StatelessWidget {
  final String excersiseName;
  final String excersiseImageUrl;
  final String excersiseDescription;
  const ExcersiseCard({
    super.key,
    required this.excersiseName,
    required this.excersiseImageUrl,
    required this.excersiseDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      //width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: kExcersiseCardBackGroundColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: kExcersiseCardBoxShadowColor,
              offset: Offset(1, 1),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            excersiseName,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          Image.asset(
            excersiseImageUrl,
            width: 80,
            height: 80,
          ),
          Text(
            excersiseDescription,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
          const Text(
            "See more...",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
