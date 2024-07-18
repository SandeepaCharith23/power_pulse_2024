import 'package:flutter/material.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';

class ProgressCard extends StatefulWidget {
  final double progressValueofExcersise;
  final int totalValueofExcersise;

  const ProgressCard(
      {super.key,
      required this.progressValueofExcersise,
      required this.totalValueofExcersise});

  @override
  State<ProgressCard> createState() => _ProgressCardState();
}

class _ProgressCardState extends State<ProgressCard> {
  @override
  Widget build(BuildContext context) {
    int completeValueofExcersise =
        (widget.progressValueofExcersise * widget.totalValueofExcersise)
            .toInt();
    return Container(
      width: double.infinity,
      height: 150,
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
        padding: const EdgeInsets.all(kDefaultPaddingValue),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "Proteins,Fats & \nCarbohydrates",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //linear indicator

            LinearProgressIndicator(
              value: widget.progressValueofExcersise,
              backgroundColor: Colors.amber,
              valueColor: const AlwaysStoppedAnimation(Colors.white),
              minHeight: 10,
              borderRadius: BorderRadius.circular(10),
            ),

            const CompletedtaskDetails(
              title01: 'Planned Days',
              title02: 'Completed Task',
              plannedTaskCount: 21.0,
              completdTaskCount: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}

class CompletedtaskDetails extends StatelessWidget {
  final String title01;
  final String title02;
  final double plannedTaskCount;
  final double completdTaskCount;
  const CompletedtaskDetails({
    super.key,
    required this.title01,
    required this.title02,
    required this.plannedTaskCount,
    required this.completdTaskCount,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title01,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8,
              ),
            ),
            Text(
              plannedTaskCount.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8,
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title02,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8,
              ),
            ),
            Text(
              completdTaskCount.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 8,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
