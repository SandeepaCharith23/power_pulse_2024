import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  final String favouriteName;
  final String favouriteImageUrl;
  final String favouriteDescription;
  const FavoriteCard(
      {super.key,
      required this.favouriteName,
      required this.favouriteImageUrl,
      required this.favouriteDescription});

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: const BoxDecoration(
        color: Color(0xFFF0EEEE),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            widget.favouriteName,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.asset(
            widget.favouriteImageUrl,
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
          Text(
            widget.favouriteDescription,
            style: const TextStyle(
              fontSize: 08,
              color: Color(0xFF1D1D1D),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
