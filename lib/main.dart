import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:power_pulse_2024/constants/colors.dart';
import 'package:power_pulse_2024/pages/home_page.dart';
import 'package:power_pulse_2024/pages/add_new_page.dart';
import 'package:power_pulse_2024/pages/favourite_page.dart';
import 'package:power_pulse_2024/pages/personal_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const AddNewPage(),
    const FavouritePage(),
    const PersonalPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Power Pulse 2024',
      theme: ThemeData(
        primaryColor: kprimaryColor,
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF46A1EC),
          selectedItemColor: const Color(0xFF043D6C),
          unselectedItemColor: const Color(0xFFA1CCEF),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Add new",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: "My Favourites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.verified_user),
              label: "My Profile",
            ),
          ],
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
