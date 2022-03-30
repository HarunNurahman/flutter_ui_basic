import 'package:flutter/material.dart';
import 'package:flutter_ui_basic/new-ui/components/themes.dart';

class ChatsTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool readCheck;

  const ChatsTile(
      {Key? key,
      required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.readCheck})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              Text(
                text,
                style: readCheck
                    ? subtitleTextStyle.copyWith(color: colorDarkBlue)
                    : subtitleTextStyle.copyWith(color: colorGrey),
              ),
            ],
          ),
          const Spacer(),
          Text(time, style: subtitleTextStyle.copyWith(color: colorGrey)),
        ],
      ),
    );
  }
}
