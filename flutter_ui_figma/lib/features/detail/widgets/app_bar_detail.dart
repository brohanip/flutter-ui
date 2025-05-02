import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarDetail extends StatelessWidget {
  const AppBarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
          icon: SvgPicture.asset("assets/icons/back.svg"),
        ),
        Text("Detail",
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF4A4543),
            )),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/love.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/share.svg"),
            ),
          ],
        ),
      ],
    );
  }
} 