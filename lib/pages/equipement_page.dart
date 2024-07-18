import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';
import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/models/equipement_model.dart';
import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/equipement_card.dart';

class EquipementPage extends StatefulWidget {
  final String equipementPageTitle;
  final String equipementDescription;
  final List<Equipement> equipementList;

  const EquipementPage(
      {super.key,
      required this.equipementPageTitle,
      required this.equipementDescription,
      required this.equipementList});

  @override
  State<EquipementPage> createState() => _EquipementPageState();
}

class _EquipementPageState extends State<EquipementPage> {
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
                widget.equipementPageTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                widget.equipementDescription,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: kDefaultPaddingValue,
                  crossAxisSpacing: kDefaultPaddingValue,
                  childAspectRatio: 25 / 10,
                ),
                itemCount: widget.equipementList.length,
                itemBuilder: (context, index) {
                  Equipement equipement = widget.equipementList[index];
                  return EquipementCard(
                    equipementName: equipement.equipmentName,
                    equipementDescription: equipement.equipementDescription,
                    calleriesperSecond:
                        equipement.equipementBurningCalleriesperMinutes,
                    minutesUsed: equipement.equipementUseMinutes,
                    equipementImageUrl: equipement.equipementImageUrl,
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
