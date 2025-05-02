import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartDetail extends StatelessWidget {
  const AddToCartDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF9A9390),
        ),
        onPressed: () {
          // Logika untuk menambahkan ke keranjang
        },
        child: Text(
          "ADD TO CART",
          style: GoogleFonts.poppins(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
} 