# Narakeet Text to Speech Streaming API example in Dart

This repository provides a quick example demonstrating how to access the Narakeet [streaming Text to Speech API](https://www.narakeet.com/docs/automating/text-to-speech-api/) from Dart.

The example sends a request to generate audio from text and saves it to output.mp3 in the local directory.

Note that Narakeet also has a text to speech API to generate long content, suitable for larger conversion tasks. 

## Prerequisites

This example works with Dart 3 and later. You can run it inside Docker (then it does not require a local Dart installation), or on a system with Dart 3 or later.

## Running the example

1. set and export a local environment variable called `NARAKEET_API_KEY`, containing your API key, or alternatively edit [tts.dart](tts.dart) and add your API key on line 4. 
2. Optionally modify the voice and text parameters on lines 5 and 6, which control the text to speech synthesis voice and the text sent to the API for synthesis.
2. To run inside docker, execute `make run`
3. Or to run outside docker, on a system with `dart` command line, execute `dart tts.dart`

## More information

Check out <https://www.narakeet.com/docs/automating/text-to-speech-api/> for more information on the Narakeet Text to Speech API
