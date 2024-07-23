import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';
import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/models/equipement_model.dart';
import 'package:power_pulse_2024/models/excersise_model.dart';

import 'package:power_pulse_2024/widegets/progress_card.dart';

import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/task_card.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //1.Date display
              Text(
                "$formatteddateMonthYear $formattedDate",
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: kSubTitleColor,
                ),
              ),
              const SizedBox(
                height: 10,
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
              const SizedBox(
                height: 10,
              ),

              //2.Plan Progress description Container
              ProgressCard(
                progressValueofExcersise:
                    currentuser.calculateTotalCalleriesBurnByExcersie(),
                totalValueofExcersise: 10,
              ),

              const Divider(),
              const SizedBox(
                height: 10,
              ),
              //3.Todays activity section
              const Text(
                "Here's your added Activies and Equipemenets",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //display the Completed Excersises and Equipments
              // const CompletedTaskDetailsDisplayCard(),
              Container(
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
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Marked your equipements as hand over ",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //display added excersises and Equipments
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: user.userSelectedEquipementList.length,
                itemBuilder: (context, index) {
                  Equipement addedEquipement =
                      user.userSelectedEquipementList[index];
                  return TaskCard(
                    taskName: addedEquipement.equipmentName,
                    taskImageUrl: addedEquipement.equipementImageUrl,
                    taskDescription: addedEquipement.equipementDescription,
                    markAsDoneFunction: () {
                      setState(() {
                        user.markasHandoverEquipement(
                            addedEquipement.equipmentId);
                      });
                    },
                    taskDuration: addedEquipement.equipementUseMinutes,
                  );
                },
              ),

              const Text(
                "Marked your  Excersise as Completd",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              //display added excersises and Equipments
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: user.userSelectedExcersisesList.length,
                itemBuilder: (context, index) {
                  Excersise addedExcersise =
                      user.userSelectedExcersisesList[index];
                  return TaskCard(
                    taskName: addedExcersise.excersiseName,
                    taskImageUrl: addedExcersise.excersiseImageUrl,
                    taskDescription: addedExcersise.excersiseDescription,
                    markAsDoneFunction: () {
                      setState(() {
                        if (kDebugMode) {
                          print("Inside personal page setstate method inside");
                        }
                        user.markedasCompletedfunction(
                            addedExcersise.excersiseId);
                      });
                    },
                    taskDuration: addedExcersise.excersiseDuration,
                  );
                },
              ),
            ],
          ),
        ),
      )),
    );
  }
}
