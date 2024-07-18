import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';

import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/models/excersise_model.dart';
import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/excersise_card.dart';

class CustomizedExcersiseDetails extends StatefulWidget {
  final String excersiseTitle;
  final String excersiseDescription;
  final List<Excersise> excersiseList;

  const CustomizedExcersiseDetails({
    super.key,
    required this.excersiseTitle,
    required this.excersiseDescription,
    required this.excersiseList,
  });

  @override
  State<CustomizedExcersiseDetails> createState() =>
      _CustomizedExcersiseDetailsState();
}

class _CustomizedExcersiseDetailsState
    extends State<CustomizedExcersiseDetails> {
  //current date and formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dateFormat1 = DateFormat('dd');

  //user
  final currentuser = user;

  @override
  Widget build(BuildContext context) {
    //using Date format
    DateTime currentdate = DateTime.now();
    String formatteddateMonthYear = formatter.format(currentdate);
    String formattedDate = dateFormat1.format(currentdate);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$formatteddateMonthYear $formattedDate",
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: kSubTitleColor,
              ),
            ),
            //2.User Details display
            Text(
              "Hello ${currentuser.userFullName}",
              style: const TextStyle(
                fontSize: kMainTitlefontsize,
                fontWeight: FontWeight.w700,
                color: kMainTitleColor,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.excersiseTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.excersiseDescription,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),

              const Divider(),

              //excersises grid view
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultFontSize,
                  crossAxisSpacing: kDefaultFontSize,
                ),
                itemCount: widget.excersiseList.length,
                itemBuilder: (context, index) {
                  Excersise excersiseDetails = widget.excersiseList[index];
                  return ExcersiseCard(
                    excersiseName: excersiseDetails.excersiseName,
                    excersiseImageUrl: excersiseDetails.excersiseImageUrl,
                    excersiseDescription: excersiseDetails.excersiseDescription,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
