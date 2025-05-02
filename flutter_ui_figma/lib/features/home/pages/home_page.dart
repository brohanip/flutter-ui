import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/app_bar_home.dart';
import '../widgets/category_home.dart';
import '../widgets/recommended_furniture_home.dart';
import '../widgets/bottom_navigation_bar_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            SizedBox(
              width: 226,
              child: Text(
                'Discover the most modern furniture',
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Color(0xFF4A4543)),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              height: 40,
              child: CategoryHome(),
            ),
            const SizedBox(height: 30),
            Text(
              "Recommended Furnitures",
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Color(0xFF4A4543),
              )),
            ),
            Expanded(child: RecommendedFurnituresHome()),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbarHome(),
    );
  }
} 