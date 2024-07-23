class Excersise {
  final int excersiseId;
  final String excersiseName;
  final String excersiseImageUrl;
  final String excersiseDescription;
  final double excersiseDuration;
  final double excersiseBurningCalleriesperMin;
  bool iscompleted;

  Excersise({
    required this.excersiseId,
    required this.excersiseName,
    required this.excersiseImageUrl,
    required this.excersiseDescription,
    required this.excersiseDuration,
    required this.iscompleted,
    required this.excersiseBurningCalleriesperMin,
  });
}
