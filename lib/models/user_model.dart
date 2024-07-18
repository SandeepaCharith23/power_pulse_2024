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
}
