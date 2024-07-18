import 'package:flutter/material.dart';

class AddEquipementCard extends StatefulWidget {
  final String equipmentName;
  final String equipementDescription;
  final String equipementImageUrl;
  final double equipementUseMinutes;
  final double equipementBurningCalleriesperMinutes;
  final bool isadded;
  final void Function() toggleaddEquipement;
  final bool isfavoured;
  final void Function() togglefavouriteEquipement;
  const AddEquipementCard(
      {super.key,
      required this.equipmentName,
      required this.equipementDescription,
      required this.equipementImageUrl,
      required this.equipementUseMinutes,
      required this.equipementBurningCalleriesperMinutes,
      required this.toggleaddEquipement,
      required this.isadded,
      required this.togglefavouriteEquipement,
      required this.isfavoured});

  @override
  State<AddEquipementCard> createState() => _AddEquipementCardState();
}

class _AddEquipementCardState extends State<AddEquipementCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFEEEDEB),
          border: Border.all(color: const Color(0xFF797979)),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0xFFB4B3B0),
              offset: Offset(1, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.equipmentName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    widget.equipementImageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.equipementDescription,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "You will burn  ${widget.equipementBurningCalleriesperMinutes} Calleries per minutes",
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        widget.toggleaddEquipement();
                      },
                      icon: Icon(
                        widget.isadded ? Icons.remove : Icons.add,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amber,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {
                        widget.togglefavouriteEquipement();
                      },
                      icon: Icon(
                        widget.isfavoured
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
