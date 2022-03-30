import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class SenderBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;
  const SenderBubble({
    Key? key,
    required this.imageUrl,
    required this.text,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: BoxDecoration(
              color: colorWhite,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                      fontSize: 16, color: const Color(0xFF505C6B)),
                ),
                const SizedBox(height: 5),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: const Color(0xff505C6B),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 12),
          Image.asset(
            imageUrl,
            width: 40,
          )
        ],
      ),
    );
  }
}
