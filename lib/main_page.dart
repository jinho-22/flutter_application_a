import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({
    super.key,
  });

  @override
  State<mainpage> createState() => _mainpageState();
}

DateTime now = DateTime.now();
DateTime yesterday = now.subtract(const Duration(days: 1));

class _mainpageState extends State<mainpage> {
  showCal() async {
    var dt = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2006, 1, 1),
        lastDate: yesterday);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: null,
      floatingActionButton: FloatingActionButton(
        onPressed: showCal,
        child: const Icon(Icons.search),
      ),
    );
  }
}
