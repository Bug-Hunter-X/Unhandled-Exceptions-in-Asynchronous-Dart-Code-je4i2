```dart
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      // ... process data ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('Socket Exception: Could not connect to the server: $e');
  } on TimeoutException catch (e) {
    print('Timeout Exception: Request timed out: $e');
  } on FormatException catch (e) {
    print('Format Exception: Invalid JSON received: $e');
  } catch (e) {
    print('Unexpected Error: $e');
    // Consider more sophisticated logging, error reporting, or retry mechanisms here
  }
}
```