import 'package:flutter/material.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/data/user_data.dart';

class CompletedTaskDetailsDisplayCard extends StatefulWidget {
  const CompletedTaskDetailsDisplayCard({super.key});

  @override
  State<CompletedTaskDetailsDisplayCard> createState() =>
      _CompletedTaskDetailsDisplayCardState();
}

class _CompletedTaskDetailsDisplayCardState
    extends State<CompletedTaskDetailsDisplayCard> {
  //user
  final currentuser = user;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            kBlueGradientStartColor,
            kBlueGradientEndColor,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Minutes Spend on Excersises: ${user.calculateTotalMinofExcersised().toString()} Minutes",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Total Minutes Spend on Equipements: ${user.calculateTotalMinofEquipements().toString()} Minutes",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Total Completed Excersise:${user.userCompletedTotalExcersisesCount.toString()}",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Total Handed equipement count: ${user.userHandOveredEquipementCount.toString()}",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.normal,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
