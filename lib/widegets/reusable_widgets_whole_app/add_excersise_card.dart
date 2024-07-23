import 'package:flutter/material.dart';

import 'package:power_pulse_2024/constants/colors.dart';

class AddExcersiseCard extends StatefulWidget {
  final String excersiseName;
  final String excersiseDecription;
  final String excersiseImageUrl;
  final bool isadded;
  final bool isfavoured;
  final void Function() toggleAddExcersise;
  final void Function() toggleFavouriteExcersise;

  const AddExcersiseCard({
    super.key,
    required this.excersiseName,
    required this.excersiseImageUrl,
    required this.excersiseDecription,
    required this.isadded,
    required this.toggleAddExcersise,
    required this.toggleFavouriteExcersise,
    required this.isfavoured,
  });

  @override
  State<AddExcersiseCard> createState() => _AddExcersiseCardState();
}

class _AddExcersiseCardState extends State<AddExcersiseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xFF797979)),
          boxShadow: const [
            BoxShadow(
              color: Color(0x1F868383),
              offset: Offset(1, 2),
              blurRadius: 2,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.excersiseName,
              style: const TextStyle(
                color: Colors.black,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset(
              widget.excersiseImageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            Text(
              widget.excersiseDecription,
              style: const TextStyle(
                color: kSubTitleColor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.amber,
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      widget.toggleFavouriteExcersise();
                    },
                    icon: Icon(
                      widget.isfavoured
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.amber,
                    ),
                  ),
                  child: IconButton(
                      onPressed: () {
                        widget.toggleAddExcersise();
                      },
                      icon: Icon(widget.isadded ? Icons.remove : Icons.add)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
