import 'dart:convert';

import 'package:http/http.dart' as http;

class KobisApi {
  final String api_Key;
  final String _site = 'http://www.kobis.or.kr/kobisopenapi/webservice/rest/';
  KobisApi({required this.api_Key});

  Future<List<dynamic>> getDailyBoxOffice({required String targetDt}) async {
    var uri = '$_site/boxoffice/searchDailyBoxOfficeList.json';
    uri = '$uri?key=$api_Key';
    uri = '$uri&targetDt=$targetDt';

    var response = await http.get(Uri.parse(uri));
    // get 주소창으로 정보를 넘기는 것 => 주소창에 정보가 다 보임
    // post 헤더에 정보를 넘김 => 주소창에 안보임
    if (response.statusCode == 200) {
      //정상
      var movies = jsonDecode(response.body)['boxOfficeResult']
          ['dailyBoxOfficeList'] as List<dynamic>;
      return movies;
    } else {
      //에러
      return [];
    }
  }

  getMovieDetail({required String movieCd}) async {
    var uri = '$_site/movie/searchMovieInfo.json';
    uri = '$uri?key=$api_Key';
    uri = '$uri&movieCd=$movieCd';
    var response = await http.get(Uri.parse(uri));
    if (response.statusCode == 200) {
      var movie =
          jsonDecode(response.body)['movieInfoResult']['movieInfo'] as dynamic;
      print(movie['movieNm']);
    } else {
      return [];
    }
  }
}
