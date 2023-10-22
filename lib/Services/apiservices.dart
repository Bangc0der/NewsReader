import "package:http/http.dart" as http;
import "dart:convert";

class ApiService{
  Future<List<dynamic>> getAllPosts() async  {
  try {
    final allProductUrl = Uri.parse("https://newsapi.org/v2/everything?q=tesla&from=2023-09-19&sortBy=publishedAt&apiKey=f5fb3bfcab694d738693dba3ce24721a");
    final result = await http.get(allProductUrl);
    
    if (result.statusCode == 200) {
      return json.decode(result.body);
    } else {
      throw Exception('Failed to load data. Status code: ${result.statusCode}');
    }
  } catch (error) {
    print(error);
    throw error;
  }
}
}