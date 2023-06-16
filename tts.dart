import 'dart:convert';
import 'dart:io';

Future<void> main() async {
  final String apiKey = Platform.environment['NARAKEET_API_KEY'] ?? '';
  final String voice = 'mickey';
  final String text = 'Hi there from Dart';
  final String url = 'https://api.narakeet.com/text-to-speech/mp3?voice=$voice';

  if (apiKey.isEmpty) {
    print('Please set NARAKEET_API_KEY environment variable');
    return;
  }

  final HttpClient client = HttpClient();
  final HttpClientRequest request = await client.postUrl(Uri.parse(url));

  request.headers.set('Accept', 'application/octet-stream');
  request.headers.set('Content-Type', 'text/plain');
  request.headers.set('x-api-key', apiKey);
  request.add(utf8.encode(text));

  final HttpClientResponse response = await request.close();

  if (response.statusCode == 200) {
    final File file = File('output.mp3');
    final IOSink sink = file.openWrite();
    await response.pipe(sink);
    await sink.close();

    print('File saved at: ${file.path}');
  } else {
    print('Failed to download file: ${response.statusCode}');
  }

  client.close();
}

