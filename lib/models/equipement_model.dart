class Equipement {
  final int equipmentId;
  final String equipmentName;
  final String equipementDescription;
  final String equipementImageUrl;
  final double equipementUseMinutes;
  final double equipementBurningCalleriesperMinutes;
  final bool ishandover;

  Equipement({
    required this.equipmentId,
    required this.equipmentName,
    required this.equipementDescription,
    required this.equipementImageUrl,
    required this.equipementUseMinutes,
    required this.equipementBurningCalleriesperMinutes,
    required this.ishandover,
  });
}
