import 'package:power_pulse_2024/models/excersise_model.dart';

class ExcersiseData {
  final List<Excersise> excersisesList = [
    Excersise(
      excersiseId: 1,
      excersiseName: "Treadmill",
      excersiseImageUrl: "assets/images/exercises/excersise_treadmill.png",
      excersiseDescription:
          "A treadmill offers versatile indoor exercise for walking, jogging, or running with adjustable speeds and inclines.",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 4.3,
    ),
    Excersise(
      excersiseId: 2,
      excersiseName: "Stationary Biking",
      excersiseImageUrl:
          "assets/images/exercises/excersise_stationary_bike.png",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.3,
      excersiseDescription:
          "Stationary biking offers an effective indoor cardio workout, improving endurance and strength with adjustable resistance.",
    ),
    Excersise(
      excersiseId: 3,
      excersiseName: "Elliptical Trainer",
      excersiseImageUrl: "assets/images/exercises/excersise_elipter.png",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.3,
      excersiseDescription:
          "The elliptical trainer provides a low-impact, full-body workout, combining cardio and strength training with adjustable resistance.",
    ),
    Excersise(
      excersiseId: 4,
      excersiseName: "Rowing Machine",
      excersiseImageUrl: "assets/images/exercises/excersise_rowning.png",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.3,
      excersiseDescription:
          "The rowing machine delivers a full-body workout, enhancing cardiovascular fitness and strength with adjustable resistance.",
    ),
    Excersise(
      excersiseId: 5,
      excersiseName: "Jump Rope",
      excersiseImageUrl: "assets/images/exercises/excersise_jumping_rope.png",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 5.3,
      excersiseDescription:
          "Jump rope is a high-intensity cardio exercise that improves agility, coordination, and cardiovascular fitness.",
    ),
  ];

  final List<Excersise> warmUpexcersisesList = [
    Excersise(
      excersiseId: 1,
      excersiseName: "WarmUp Excersise",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "A gentle stretching exercise to warm up your back and core muscles.",
      excersiseDuration: 10.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 4.3,
    ),
    Excersise(
      excersiseId: 2,
      excersiseName: "Jumping Jacks",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "A full-body exercise to increase your heart rate and warm up your muscles.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 8.0,
    ),
    Excersise(
      excersiseId: 3,
      excersiseName: "Arm Circles",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to warm up your shoulder muscles and improve flexibility.",
      excersiseDuration: 3.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 3.5,
    ),
    Excersise(
      excersiseId: 4,
      excersiseName: "High Knees",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to increase your heart rate and warm up your legs.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 7.5,
    ),
    Excersise(
      excersiseId: 5,
      excersiseName: "Butt Kicks",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to warm up your hamstrings and glutes.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 6.5,
    ),
    Excersise(
      excersiseId: 6,
      excersiseName: "Leg Swings",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "A dynamic stretch to warm up your hip flexors and legs.",
      excersiseDuration: 4.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 4.8,
    ),
    Excersise(
      excersiseId: 7,
      excersiseName: "Torso Twists",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to warm up your core muscles and improve flexibility.",
      excersiseDuration: 3.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 3.0,
    ),
    Excersise(
      excersiseId: 8,
      excersiseName: "Hip Circles",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "A dynamic stretch to warm up your hip muscles and improve mobility.",
      excersiseDuration: 3.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 3.2,
    ),
    Excersise(
      excersiseId: 9,
      excersiseName: "Ankle Bounces",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to warm up your calf muscles and improve ankle flexibility.",
      excersiseDuration: 2.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.5,
    ),
    Excersise(
      excersiseId: 10,
      excersiseName: "Lunges",
      excersiseImageUrl: "assets/images/exercises/triangle.png",
      excersiseDescription:
          "An exercise to warm up your leg muscles and improve balance.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 6.0,
    ),
  ];

  final List<Excersise> stretchingExercisesList = [
    Excersise(
      excersiseId: 1,
      excersiseName: "Standing Hamstring Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in the back of your thigh.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
    Excersise(
      excersiseId: 2,
      excersiseName: "Quadriceps Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in the front of your thigh.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
    Excersise(
      excersiseId: 3,
      excersiseName: "Calf Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in your lower leg.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.8,
    ),
    Excersise(
      excersiseId: 4,
      excersiseName: "Triceps Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in the back of your upper arm.",
      excersiseDuration: 4.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.5,
    ),
    Excersise(
      excersiseId: 5,
      excersiseName: "Shoulder Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles around your shoulders.",
      excersiseDuration: 4.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.5,
    ),
    Excersise(
      excersiseId: 6,
      excersiseName: "Butterfly Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in your inner thighs.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
    Excersise(
      excersiseId: 7,
      excersiseName: "Side Bend Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles along the sides of your torso.",
      excersiseDuration: 4.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 1.8,
    ),
    Excersise(
      excersiseId: 8,
      excersiseName: "Cat-Cow Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A dynamic stretch to improve flexibility in your spine and relieve tension in your back muscles.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
    Excersise(
      excersiseId: 9,
      excersiseName: "Seated Forward Bend",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in your back and hamstrings.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
    Excersise(
      excersiseId: 10,
      excersiseName: "Hip Flexor Stretch",
      excersiseImageUrl: "assets/images/exercises/cobra.png",
      excersiseDescription:
          "A stretch to lengthen the muscles in the front of your hips.",
      excersiseDuration: 5.0,
      iscompleted: false,
      excersiseBurningCalleriesperMin: 2.0,
    ),
  ];
}
