// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
Future<String> checkDataExistence(String potinid) async {
  // Replace 'your-project-id' and 'path/to/your/data' with your Firebase project ID and the path to your data
  final String projectId = 'zaytoon-cf7db-default-rtdb';
  final String path = 'pots/$potinid';

  final Uri url = Uri.parse('https://$projectId.firebaseio.com/$path.json');

  final response = await http.get(url);

  return response.body;
}
