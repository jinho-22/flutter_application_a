import 'package:flutter/material.dart';
import 'package:flutter_application_a/kobis_api.dart';

class MovieDetail extends StatelessWidget {
  final String movieCd;

  MovieDetail({super.key, required this.movieCd});

  var kobisApi = KobisApi(api_Key: '4d1e7ab0e206b00fe20f139890fa251b');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(movieCd),
    );
  }
}
