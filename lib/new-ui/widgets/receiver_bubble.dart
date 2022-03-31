import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceiverBubble extends StatelessWidget {
  final String imageUrl;
  final String text;
  final String time;

  const ReceiverBubble({
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
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(imageUrl, width: 40),
          const SizedBox(width: 12),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            decoration: const BoxDecoration(
              color: Color(0xFFEBEFF3),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF505C6B),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  time,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w300,
                    color: Color(0xff505C6B),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
