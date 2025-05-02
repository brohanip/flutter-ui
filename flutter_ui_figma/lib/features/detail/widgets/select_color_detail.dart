import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectColorDetail extends StatefulWidget {
  const SelectColorDetail({super.key});

  @override
  State<SelectColorDetail> createState() => _SelectColorDetailState();
}

class _SelectColorDetailState extends State<SelectColorDetail> {
  final List<Color> _colors = [
    const Color(0xFF9A9390),
    const Color(0xFFEEA427),
    const Color(0xFFE3E3E3),
    const Color(0xFF80450A),
  ];

  int _selectedColor = 0;

  void onTapColor(int index) {
    setState(() {
      _selectedColor = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Choose a color",
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF7A8D9C),
          ),
        ),
        Row(
          children: _colors.asMap().entries.map((entry) {
            int index = entry.key;
            Color color = entry.value;

            return Padding(
              padding: const EdgeInsets.only(left: 8),
              child: InkWell(
                onTap: () => onTapColor(index),
                child: _selectedColor == index
                    ? CircleAvatar(
                        radius: 14,
                        backgroundColor: color,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: color,
                          ),
                        ),
                      )
                    : CircleAvatar(
                        radius: 10,
                        backgroundColor: color,
                      ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
} 