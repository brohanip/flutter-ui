import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryHome extends StatefulWidget {
  const CategoryHome({super.key});

  @override
  State<CategoryHome> createState() => _CategoryHomeState();
}

class _CategoryHomeState extends State<CategoryHome> {
  final List<String> _category = [
    'All',
    'Living Room',
    'Bedroom',
    'Dining Room',
    'Kitchen',
  ];

  int _selectedCategory = 0;

  void _onTapCategory(int index) {
    setState(() {
      _selectedCategory = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: _category.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 17),
          child: InkWell(
              onTap: () => _onTapCategory(index),
              child: _selectedCategory == index
                  ? CategoryItem(
                      category: _category[index],
                      backgroundColor: const Color(0xFF9A9390),
                      fontColor: const Color(0xFFFFFFFF),
                    )
                  : CategoryItem(
                      category: _category[index],
                      backgroundColor: Colors.transparent,
                      fontColor: const Color(0xFF4A4543),
                    )),
        );
      },
    );
  }
}

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.category,
    required this.backgroundColor,
    required this.fontColor,
  });

  final String category;
  final Color backgroundColor;
  final Color fontColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          category,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: fontColor,
            ),
          ),
        ),
      ),
    );
  }
} 