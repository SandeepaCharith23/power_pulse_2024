import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/constants/defaultvalues.dart';
import 'package:power_pulse_2024/data/user_data.dart';
import 'package:power_pulse_2024/models/equipement_model.dart';
import 'package:power_pulse_2024/models/excersise_model.dart';
import 'package:power_pulse_2024/widegets/reusable_widgets_whole_app/favorite_card.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Here this are Your favourite Excersises",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF05193A),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                //favourite excersise gridview
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPaddingValue,
                      mainAxisSpacing: kDefaultPaddingValue,
                      childAspectRatio: 5 / 5),
                  itemCount: user.userFavouredExcersisesList.length,
                  itemBuilder: (BuildContext context, int index) {
                    Excersise favouredExcersise =
                        user.userFavouredExcersisesList[index];

                    return FavoriteCard(
                      favouriteName: favouredExcersise.excersiseName,
                      favouriteImageUrl: favouredExcersise.excersiseImageUrl,
                      favouriteDescription:
                          favouredExcersise.excersiseDescription,
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),

                const Divider(),

                const Text(
                  "Here this are Your favourite Equipments",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF05193A),
                    fontWeight: FontWeight.bold,
                  ),
                ),

                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: kDefaultPaddingValue,
                      mainAxisSpacing: kDefaultPaddingValue,
                      childAspectRatio: 5 / 5),
                  itemCount: user.userFavouredEquipementList.length,
                  itemBuilder: (BuildContext context, int index) {
                    Equipement favouredEquipement =
                        user.userFavouredEquipementList[index];

                    return FavoriteCard(
                      favouriteName: favouredEquipement.equipmentName,
                      favouriteImageUrl: favouredEquipement.equipementImageUrl,
                      favouriteDescription:
                          favouredEquipement.equipementDescription,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
