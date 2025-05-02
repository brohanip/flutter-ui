import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_ui_figma/features/detail/widgets/add_to_cart_detail.dart';
import 'package:flutter_ui_figma/features/detail/widgets/nama_produk_harga_detail.dart';
import 'package:flutter_ui_figma/features/detail/widgets/select_color_detail.dart';
import 'package:flutter_ui_figma/features/detail/widgets/select_quantity_detail.dart';

class ContainerDetail extends StatelessWidget {
  const ContainerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 381,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Container(
            width: 36,
            height: 5,
            color: const Color(0xFFD8D8D8),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const NamaProdukHargaDetail(),
                const SizedBox(height: 9),
                const SelectColorDetail(),
                const SizedBox(height: 19),
                const SelectQuantityDetail(),
                const SizedBox(height: 32),
                SizedBox(
                  height: 60,
                  child: Text(
                    "Deskripsi produk di sini.",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFADADAD),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const AddToCartDetail(),
              ],
            ),
          ),
        ],
      ),
    );
  }
} 