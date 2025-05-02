import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamaProdukHargaDetail extends StatelessWidget {
  const NamaProdukHargaDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Wooden Coff",
          style: GoogleFonts.poppins(
            fontSize: 26,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF4A4543),
          ),
        ),
        Text(
          "\$240",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: const Color(0xFF9A9390),
          ),
        ),
      ],
    );
  }
} 