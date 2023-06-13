import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({
    super.key,
  });

  @override
  State<Mainpage> createState() => _MainpageState();
}

DateTime now = DateTime.now();
DateTime yesterday = now.subtract(const Duration(days: 1));

class _MainpageState extends State<Mainpage> {
  showCal() async {
    var dt = await showDatePicker(
        context: context,
        initialDate: DateTime(2023),
        firstDate: DateTime(2023, 1, 1),
        lastDate: yesterday);

    String ddtt = dt.toString().split(' ')[0].replaceAll('-', '');
    // var movieApi = MovieApi();
    // var api = MovieApi();
    // var movies = await api.getmovie(keyword: ddtt);
    print(ddtt);
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
