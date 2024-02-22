import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _potnumber = prefs.getString('ff_potnumber') ?? _potnumber;
    });
    _safeInit(() {
      _planttype = prefs.getString('ff_planttype') ?? _planttype;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _potnumber = '';
  String get potnumber => _potnumber;
  set potnumber(String _value) {
    _potnumber = _value;
    prefs.setString('ff_potnumber', _value);
  }

  String _planttype = '';
  String get planttype => _planttype;
  set planttype(String _value) {
    _planttype = _value;
    prefs.setString('ff_planttype', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
