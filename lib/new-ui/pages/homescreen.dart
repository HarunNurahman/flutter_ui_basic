import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
      body: SafeArea(
        child: Center(
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
              Container(
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
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/img_userpic.png',
                          height: 55,
                          width: 55,
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Joshua', style: titleTextStyle),
                            Text(
                              'Sorry, I\'m busy. I hope I can h....',
                              style: subtitleTextStyle.copyWith(
                                  color: colorDarkBlue),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Text('Now', style: subtitleTextStyle),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
