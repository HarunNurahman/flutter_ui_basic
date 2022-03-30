import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';
import 'package:flutter_ui_basic/new-ui/widgets/chats_tile.dart';
import 'package:flutter_ui_basic/new-ui/widgets/jobs_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
        backgroundColor: colorGreen,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: colorBlue,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),
              Image.asset(
                'assets/images/img_profpic.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              Text(
                'Harun Nurahman',
                style: TextStyle(
                    color: colorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 2),
              Text(
                'Mobile Developer',
                style: TextStyle(
                    color: colorLightBlue,
                    fontSize: 16,
                    fontWeight: FontWeight.w300),
              ),
              const SizedBox(height: 30),
              SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: colorWhite,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends', style: titleTextStyle),
                      const ChatsTile(
                        imageUrl: 'assets/images/img_userpic.png',
                        name: 'Harun',
                        text: 'Hey, how are you?',
                        time: '12:00',
                        readCheck: true,
                      ),
                      const ChatsTile(
                        imageUrl: 'assets/images/img_userpic2.png',
                        name: 'Nurahman',
                        text: 'Hey, wanna hang out to...',
                        time: 'Now',
                        readCheck: false,
                      ),
                      const SizedBox(height: 30),
                      Text('Groups', style: titleTextStyle),
                      const JobsTile(
                        imageUrl: 'assets/images/img_jobgroup1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        time: '11:00',
                        readCheck: false,
                      ),
                      const JobsTile(
                        imageUrl: 'assets/images/img_jobgroup2.png',
                        name: 'HRD',
                        text: 'Here, here we can go...',
                        time: '07:00',
                        readCheck: true,
                      ),
                      const JobsTile(
                        imageUrl: 'assets/images/img_jobgroup3.png',
                        name: 'Jenius',
                        text: 'Your payment is over...',
                        time: '07:00',
                        readCheck: true,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
