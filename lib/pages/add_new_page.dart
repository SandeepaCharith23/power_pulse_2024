import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';
import 'package:power_pulse_2024/constants/strings_data.dart';
import 'package:power_pulse_2024/data/equipement_data.dart';
import 'package:power_pulse_2024/data/excersise_data.dart';
import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/models/equipement_model.dart';
import 'package:power_pulse_2024/models/excersise_model.dart';

import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/add_equipement_card.dart';
import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/add_excersise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  //user
  final currentuser = user;

  //Import excersiseList
  final excersiseList01 = ExcersiseData().excersisesList;
  final equipementList01 = EquipementData().equipementList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefaultPaddingValue),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                const Text(
                  title01AddnewPage,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: kMainTitleColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  subTopic01AddnewPage,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: kMainTitleColor,
                  ),
                ),

                //Horizontal ListView
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: excersiseList01.length,
                    itemBuilder: (context, index) {
                      Excersise excersise = excersiseList01[index];
                      return AddExcersiseCard(
                        excersiseName: excersise.excersiseName,
                        excersiseImageUrl: excersise.excersiseImageUrl,
                        excersiseDecription: excersise.excersiseDescription,
                        isadded:
                            user.userSelectedExcersisesList.contains(excersise),
                        toggleAddExcersise: () {
                          setState(() {
                            if (user.userSelectedExcersisesList
                                .contains(excersise)) {
                              user.removeExcersise(excersise);
                              // if (kDebugMode) {
                              //   print(user.userSelectedExcersisesList.last
                              //       .excersiseName);
                              // }
                              // if (kDebugMode) {
                              //   print(user.userSelectedExcersisesList.length);
                              // }
                            } else {
                              user.addExcersise(excersise);
                              // if (kDebugMode) {
                              //   print(user.userSelectedExcersisesList.last
                              //       .excersiseName);
                              // }
                              // if (kDebugMode) {
                              //   print(user.userSelectedExcersisesList.length);
                              // }
                            }
                          });
                        },
                        isfavoured:
                            user.userFavouredExcersisesList.contains(excersise),
                        toggleFavouriteExcersise: () {
                          setState(() {
                            if (user.userFavouredExcersisesList
                                .contains(excersise)) {
                              user.removeFavouriteExcersise(excersise);
                              // if (kDebugMode) {
                              //   print(user.userFavouredExcersisesList.last
                              //       .excersiseName);
                              // }
                            } else {
                              user.addFavouriteExcersise(excersise);
                              // if (kDebugMode) {
                              //   print(user.userFavouredExcersisesList.last
                              //       .excersiseName);
                              // }
                            }
                          });
                        },
                      );
                    },
                  ),
                ),

                //Add Equipement as favourite and Add to List
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  subTopic02AddnewPage,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: kMainTitleColor,
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipementList01.length,
                    itemBuilder: (BuildContext context, int index) {
                      Equipement equipement = equipementList01[index];

                      return AddEquipementCard(
                        equipmentName: equipement.equipmentName,
                        equipementDescription: equipement.equipementDescription,
                        equipementImageUrl: equipement.equipementImageUrl,
                        equipementUseMinutes: equipement.equipementUseMinutes,
                        equipementBurningCalleriesperMinutes:
                            equipement.equipementBurningCalleriesperMinutes,
                        isadded: user.userSelectedEquipementList
                            .contains(equipement),
                        toggleaddEquipement: () {
                          setState(() {
                            if (user.userSelectedEquipementList
                                .contains(equipement)) {
                              user.removeEquipement(equipement);
                              if (kDebugMode) {
                                print(user.userSelectedEquipementList.last
                                    .equipmentName);
                              }
                            } else {
                              user.addEquipement(equipement);
                              if (kDebugMode) {
                                print(user.userSelectedEquipementList.last
                                    .equipmentName);
                              }
                            }
                          });
                        },
                        togglefavouriteEquipement: () {
                          setState(() {
                            if (user.userFavouredEquipementList
                                .contains(equipement)) {
                              user.removeFavouriteEquipment(equipement);
                              if (kDebugMode) {
                                print(user.userFavouredEquipementList.last
                                    .equipmentName);
                              }
                            } else {
                              user.addFavouriteEquipment(equipement);
                              if (kDebugMode) {
                                print(user.userFavouredEquipementList.last
                                    .equipmentName);
                              }
                            }
                          });
                        },
                        isfavoured: user.userFavouredEquipementList
                            .contains(equipement),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
