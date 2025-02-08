```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonResponse = jsonDecode(response.body);
      // Access data as needed
      print(jsonResponse['someKey']);
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other exceptions
    print('Error: $e');
    // Consider rethrowing the exception or handling it differently
    // rethrow; // uncomment if needed to propagate the error to a higher level.
  }
}
```