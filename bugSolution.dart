```dart
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data')).timeout(Duration(seconds: 5));
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body);
      print(jsonResponse['someKey']);
    } else if (response.statusCode == 404) {
      print('Data not found: ${response.statusCode}');
    } else if (response.statusCode == 500) {
      print('Server error: ${response.statusCode}');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Network error: $e');
  } on TimeoutException catch (e) {
    print('Timeout error: $e');
  } on FormatException catch (e) {
    print('JSON format error: $e');
  } catch (e) {
    print('Error: $e');
  }
}
```