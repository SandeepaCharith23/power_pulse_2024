import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';
import 'package:power_pulse_2024/data/equipement_data.dart';
import 'package:power_pulse_2024/data/excersise_data.dart';
import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/pages/customized_excersise_details.dart';
import 'package:power_pulse_2024/pages/equipement_page.dart';
import 'package:power_pulse_2024/widegets/progress_card.dart';

import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/excersise_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //current date and formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dateFormat1 = DateFormat('dd');

  //user
  final currentuser = user;

  //excersise data
  final excersiseList = ExcersiseData().excersisesList;
  final warmupexcersiseList = ExcersiseData().warmUpexcersisesList;
  final stretchexcersiseList = ExcersiseData().stretchingExercisesList;

  //Equipement data
  final equipementList = EquipementData().equipementList;

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
            padding: const EdgeInsets.all(kDefaultPaddingValue),
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
                //2.User Details display
                Text(
                  "Hello ${currentuser.userFullName}",
                  style: const TextStyle(
                    fontSize: kMainTitlefontsize,
                    fontWeight: FontWeight.w700,
                    color: kMainTitleColor,
                  ),
                ),

                //2.Plan Progress description Container
                const ProgressCard(
                  progressValueofExcersise: 0.1,
                  totalValueofExcersise: 10,
                ),

                const Divider(),
                //3.Todays activity section
                const Text(
                  "Today's Activies",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //1.warm Up excersises card
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CustomizedExcersiseDetails(
                                  excersiseTitle: "warm Up",
                                  excersiseDescription:
                                      "Warm-up exercises are activities performed before the main workout to prepare the body physically and mentally",
                                  excersiseList: warmupexcersiseList,
                                ),
                              ),
                            );
                          },
                          child: const ExcersiseCard(
                            excersiseName: 'Warm Up section',
                            excersiseImageUrl:
                                "assets/images/exercises/cobra.png",
                            excersiseDescription: 'Excersise for warming Up',
                          ),
                        ),

                        //2.About Streching Excersise Card
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    CustomizedExcersiseDetails(
                                  excersiseTitle: "Streching Excersises",
                                  excersiseDescription:
                                      "Stretching exercises improve flexibility, range of motion, and reduce muscle tension, aiding in injury prevention and enhancing overall mobility.",
                                  excersiseList: stretchexcersiseList,
                                ),
                              ),
                            );
                          },
                          child: const ExcersiseCard(
                            excersiseName: 'Stretching',
                            excersiseImageUrl:
                                "assets/images/exercises/triangle.png",
                            excersiseDescription:
                                'What are you doing for stretching',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //3.About Excersise schedule card
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CustomizedExcersiseDetails(
                                    excersiseTitle: "Your Excersise Schedule",
                                    excersiseDescription:
                                        "A gym trainer's exercise schedule includes tailored workouts, focusing on strength, cardio, and flexibility, ensuring balanced fitness and progression.",
                                    excersiseList: excersiseList),
                              ),
                            );
                          },
                          child: const ExcersiseCard(
                            excersiseName: 'Excersises',
                            excersiseImageUrl:
                                "assets/images/exercises/hunch_back.png",
                            excersiseDescription:
                                'What are in your excersise section',
                          ),
                        ),

                        //4.About the Gym equipemnets card
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EquipementPage(
                                  equipementPageTitle: 'Equipement List',
                                  equipementDescription:
                                      'All the Equipement which have in our Gym',
                                  equipementList: equipementList,
                                ),
                              ),
                            );
                          },
                          child: const ExcersiseCard(
                            excersiseName: 'Equipements',
                            excersiseImageUrl:
                                "assets/images/equipments/dumbbell.png",
                            excersiseDescription: 'About your equipements',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
