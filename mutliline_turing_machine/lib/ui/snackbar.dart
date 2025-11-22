import 'package:flutter/material.dart';

class Snackbar {
  static void create(String text, BuildContext context,
      {bool isError = true, double sec = 2}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          text,
          style: TextStyle(color: Theme.of(context).colorScheme.surface),
        ),
        backgroundColor: !isError
            ? Theme.of(context).primaryColor
            : Theme.of(context).colorScheme.error,
        duration: Duration(milliseconds: (sec * 1000).toInt()),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6)),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
