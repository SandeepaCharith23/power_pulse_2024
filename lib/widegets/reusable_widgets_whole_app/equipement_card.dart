import 'package:flutter/material.dart';

class EquipementCard extends StatelessWidget {
  final String equipementName;
  final String equipementImageUrl;
  final String equipementDescription;
  final double calleriesperSecond;
  final double minutesUsed;
  const EquipementCard(
      {super.key,
      required this.equipementName,
      required this.equipementDescription,
      required this.calleriesperSecond,
      required this.minutesUsed,
      required this.equipementImageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              equipementName,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Image.asset(
                      equipementImageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "$minutesUsed mins of workout",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      "${calleriesperSecond * minutesUsed}  Calleries will burn out",
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Text(
              equipementDescription,
              style: const TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
