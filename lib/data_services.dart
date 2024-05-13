import 'package:http/http.dart' as http;

class DataServices {
  Future getJoke() async {
    //https://icanhazdadjoke.com/

    final uri = Uri.https('icanhazdadjoke.com');
    print(uri);
    final response = await http.get(uri);
    print("my response: ${response.body}");
  }
}

class DataSeces {
  Future getJoke() async {
    print("my response: ${response.body}");
  }
}
