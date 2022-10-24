import 'dart:core';

import 'package:flutter/material.dart';
import 'package:movies/views/widgets/app_texts.dart';
import 'package:movies/views/widgets/bottomcontainer.dart';

class BookButton extends StatefulWidget {
  const BookButton({Key? key}) : super(key: key);

  @override
  State<BookButton> createState() => _BookButtonState();
}

class _BookButtonState extends State<BookButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(
                  builder: (BuildContext context, StateSetter mystate) {
                return Bottom();
              });
            });
      },
      child: Container(
        child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[600],
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextUsed("Book Ticket"),
            )),
      ),
    );
  }
}
