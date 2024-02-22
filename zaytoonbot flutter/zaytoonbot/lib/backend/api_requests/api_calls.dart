import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetpotstatusCall {
  static Future<ApiCallResponse> call({
    String? potNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getpotstatus',
      apiUrl:
          'https://zaytoon-cf7db-default-rtdb.firebaseio.com/pots/${potNumber}/status.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckforpotCall {
  static Future<ApiCallResponse> call({
    String? potNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'checkforpot',
      apiUrl:
          'https://zaytoon-cf7db-default-rtdb.firebaseio.com/pots/${potNumber}.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetpotsCall {
  static Future<ApiCallResponse> call({
    String? potNumber = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getpots',
      apiUrl: 'https://zaytoon-cf7db-default-rtdb.firebaseio.com/pots.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetplanttypesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getplanttypes',
      apiUrl:
          'https://zaytoon-cf7db-default-rtdb.firebaseio.com/planttypes/jasmine.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class EditpotsettingsCall {
  static Future<ApiCallResponse> call({
    String? potid = '',
  }) async {
    final ffApiRequestBody = '''
{"testset": "hello from flutter flow"}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editpotsettings',
      apiUrl:
          'https://zaytoon-cf7db-default-rtdb.firebaseio.com/pots/${potid}.json',
      callType: ApiCallType.PATCH,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
