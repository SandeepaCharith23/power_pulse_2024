import 'package:flutter/foundation.dart';
import 'package:power_pulse_2024/models/equipement_model.dart';
import 'package:power_pulse_2024/models/excersise_model.dart';

class User {
  final int userId;
  final String userFullName;
  final String userGender;
  final String userMobileNumber;
  final String userAddress;
  final int userAge;
  final String userBodyDescription;
  int userCompletedTotalExcersisesCount = 0;
  int userHandOveredEquipementCount = 0;
  final List<Excersise> userSelectedExcersisesList;
  final List<Equipement> userSelectedEquipementList;

  final List<Excersise> userFavouredExcersisesList;
  final List<Equipement> userFavouredEquipementList;

  User({
    required this.userId,
    required this.userFullName,
    required this.userGender,
    required this.userMobileNumber,
    required this.userAddress,
    required this.userAge,
    required this.userBodyDescription,
    required this.userSelectedExcersisesList,
    required this.userSelectedEquipementList,
    required this.userFavouredExcersisesList,
    required this.userFavouredEquipementList,
  });

  //custom methods
  //method for add new excesrsise to userSelectedExcersisesList list
  void addExcersise(Excersise excersise) {
    userSelectedExcersisesList.add(excersise);
  }

  //method for remove excersise from userSelectedExcersisesList list
  void removeExcersise(Excersise excersise) {
    userSelectedExcersisesList.remove(excersise);
  }

  //method for add a excersise as a Favourite one -add excersise to userFavouredExcersisesList
  void addFavouriteExcersise(Excersise excersise) {
    userFavouredExcersisesList.add(excersise);
  }

  //method for remove a excersise as a Favourite one -add excersise to userFavouredExcersisesList
  void removeFavouriteExcersise(Excersise excersise) {
    userFavouredExcersisesList.remove(excersise);
  }

  //method for add an equipement to userSelectedEquipementList
  void addEquipement(Equipement equipment) {
    userSelectedEquipementList.add(equipment);
  }

  //method for remove an equipement from userSelectedEquipementList
  void removeEquipement(Equipement equipment) {
    userSelectedEquipementList.remove(equipment);
  }

  //method for add a equipement as a favourite equipement
  void addFavouriteEquipment(Equipement equipment) {
    userFavouredEquipementList.add(equipment);
  }

  //method for remove a equipement from favourite equipement
  void removeFavouriteEquipment(Equipement equipment) {
    userFavouredEquipementList.remove(equipment);
  }

  //method for calculating total minutes of excercised
  double calculateTotalMinofExcersised() {
    double totalMinutesSpendonExcersise = 0.0;
    //looping through selected excersise list and get the time duration
    for (var addedexcersise in userSelectedExcersisesList) {
      totalMinutesSpendonExcersise += addedexcersise.excersiseDuration;
    }

    return totalMinutesSpendonExcersise;
  }

  //method for calculating total minutes of excercised
  double calculateTotalMinofEquipements() {
    double totalMinutesSpendonEquipements = 0.0;
    //looping through selected excersise list and get the time duration
    for (var addedquipement in userSelectedEquipementList) {
      totalMinutesSpendonEquipements += addedquipement.equipementUseMinutes;
    }

    return totalMinutesSpendonEquipements;
  }

  //method for marking excersise as Completed
  void markedasCompletedfunction(int selectedexcersiseId) {
    final selectedExcersise = userSelectedExcersisesList.firstWhere(
        (excercise01) => excercise01.excersiseId == selectedexcersiseId);

    //change the status
    selectedExcersise.iscompleted = true;

    //remove selected excersise from userSelected List
    removeExcersise(selectedExcersise);

    //Update Completed excersise count;
    userCompletedTotalExcersisesCount++;

    if (kDebugMode) {
      print("Inside User Model-markedasCompleted  function");
    }
  }

  //method for handover Equipment
  void markasHandoverEquipement(int selectedEquipementId) {
    final selectedEquipment = userSelectedEquipementList.firstWhere(
        (selectedEqu) => selectedEqu.equipmentId == selectedEquipementId);

    selectedEquipment.ishandover == true;

    //remove the euipement from userSelectedEquipementList
    removeEquipement(selectedEquipment);

    userHandOveredEquipementCount++;
  }

  //method for calculate total calaries burned by excersises
  double calculateTotalCalleriesBurnByExcersie() {
    double totalCalariesAmount = 0.0;

    for (var selectedexcersise in userSelectedExcersisesList) {
      double calperMin = selectedexcersise.excersiseBurningCalleriesperMin;
      double totalMin = selectedexcersise.excersiseDuration;
      totalCalariesAmount = calperMin * totalMin;
    }

    if (totalCalariesAmount >= 0 && totalCalariesAmount <= 10) {
      totalCalariesAmount = totalCalariesAmount / 10;
    }
    if (totalCalariesAmount > 10 && totalCalariesAmount <= 100) {
      totalCalariesAmount = totalCalariesAmount / 100;
    }

    if (totalCalariesAmount > 100 && totalCalariesAmount <= 1000) {
      totalCalariesAmount = totalCalariesAmount / 1000;
    }
    if (kDebugMode) {
      print("total calaries $totalCalariesAmount");
    }
    return totalCalariesAmount;
  }
}
