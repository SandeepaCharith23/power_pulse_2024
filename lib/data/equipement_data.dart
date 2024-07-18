import 'package:power_pulse_2024/models/equipement_model.dart';

class EquipementData {
  final List<Equipement> equipementList = [
    Equipement(
      equipmentId: 1,
      equipmentName: "Treadmill",
      equipementDescription:
          "For walking or running indoors at various speeds and inclines",
      equipementImageUrl: "assets/images/equipments/treadmill.png",
      equipementUseMinutes: 10.0,
      equipementBurningCalleriesperMinutes: 12.0,
      ishandover: true,
    ),
    Equipement(
      equipmentId: 2,
      equipmentName: "Stationary Bike",
      equipementDescription:
          "Cycling indoors with adjustable resistance for cardiovascular and leg strength training.",
      equipementImageUrl: "assets/images/equipments/stationary-bike.png",
      equipementUseMinutes: 10.0,
      equipementBurningCalleriesperMinutes: 12.0,
      ishandover: true,
    ),
    Equipement(
      equipmentId: 3,
      equipmentName: "Elliptical Trainer",
      equipementDescription:
          "Low-impact machine simulating running or walking motions, reducing joint strain.",
      equipementImageUrl: "assets/images/equipments/stationary-bike.png",
      equipementUseMinutes: 10.0,
      equipementBurningCalleriesperMinutes: 12.0,
      ishandover: true,
    ),
    Equipement(
      equipmentId: 4,
      equipmentName: "Rowing Machine",
      equipementDescription:
          "Full-body workout mimicking rowing a boat, targeting back, arms, and legs.",
      equipementImageUrl: "assets/images/equipments/stationary-bike.png",
      equipementUseMinutes: 10.0,
      equipementBurningCalleriesperMinutes: 12.0,
      ishandover: true,
    ),
    Equipement(
      equipmentId: 5,
      equipmentName: "Stair Climber",
      equipementDescription:
          "Portable cardio tool for jumping exercises, enhancing coordination and endurance.",
      equipementImageUrl: "assets/images/equipments/stationary-bike.png",
      equipementUseMinutes: 10.0,
      equipementBurningCalleriesperMinutes: 12.0,
      ishandover: true,
    )
  ];
}
