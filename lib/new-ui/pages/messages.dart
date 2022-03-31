import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';
import 'package:flutter_ui_basic/new-ui/widgets/receiver_bubble.dart';
import 'package:flutter_ui_basic/new-ui/widgets/sender_bubble.dart';
import 'package:google_fonts/google_fonts.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      floatingActionButton: chatInput(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Column(
          children: [
            header(),
            const body(),
          ],
        ),
      ),
    );
  }

  Column header() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 115,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: colorWhite,
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(40),
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/img_jobgroup1.png',
                height: 55,
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Jakarta Fair', style: titleTextStyle),
                  const SizedBox(height: 2),
                  Text('42.069 Members', style: subtitleTextStyle),
                ],
              ),
              const Spacer(),
              Icon(Icons.call, color: colorDarkBlue),
            ],
          ),
        )
      ],
    );
  }

  Container chatInput(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(75),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Type Message ...',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w300,
              fontSize: 16,
              color: const Color(0xFF999999),
            ),
          ),
          const Icon(
            Icons.send,
            size: 35,
          ),
        ],
      ),
    );
  }
}

class body extends StatelessWidget {
  const body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: const [
            SizedBox(
              height: 30,
            ),
            ReceiverBubble(
                imageUrl: 'assets/images/img_userpic.png',
                text: 'Hello, how are you?',
                time: '12:00'),
            ReceiverBubble(
                imageUrl: 'assets/images/img_userpic2.png',
                text: 'Hi, I\'m fine, thanks for asking!',
                time: '12:03'),
            SenderBubble(
              imageUrl: 'assets/images/img_jobgroup1.png',
              text: 'Hello, I\'m thinking about how\nto dealt with this client',
              time: '12:05',
            ),
            ReceiverBubble(
              imageUrl: 'assets/images/img_userpic.png',
              text: 'How can I help you?',
              time: '12:06',
            ),
          ],
        ),
      ),
    );
  }
}

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 115,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/img_profpic.png',
            height: 55,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Jakarta Fair', style: titleTextStyle),
              const SizedBox(height: 2),
              Text('42.069 Members', style: subtitleTextStyle),
            ],
          ),
          const Spacer(),
          Icon(Icons.call, color: colorDarkBlue),
        ],
      ),
    );
  }
}
