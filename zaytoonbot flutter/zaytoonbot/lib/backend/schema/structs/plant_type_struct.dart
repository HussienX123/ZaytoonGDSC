// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PlantTypeStruct extends FFFirebaseStruct {
  PlantTypeStruct({
    double? fanTime,
    double? coldTemp,
    double? hotTemp,
    double? pumpTime,
    double? lightTime,
    double? moistureLevel,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fanTime = fanTime,
        _coldTemp = coldTemp,
        _hotTemp = hotTemp,
        _pumpTime = pumpTime,
        _lightTime = lightTime,
        _moistureLevel = moistureLevel,
        super(firestoreUtilData);

  // "fan_time" field.
  double? _fanTime;
  double get fanTime => _fanTime ?? 0.0;
  set fanTime(double? val) => _fanTime = val;
  void incrementFanTime(double amount) => _fanTime = fanTime + amount;
  bool hasFanTime() => _fanTime != null;

  // "cold_temp" field.
  double? _coldTemp;
  double get coldTemp => _coldTemp ?? 0.0;
  set coldTemp(double? val) => _coldTemp = val;
  void incrementColdTemp(double amount) => _coldTemp = coldTemp + amount;
  bool hasColdTemp() => _coldTemp != null;

  // "hot_temp" field.
  double? _hotTemp;
  double get hotTemp => _hotTemp ?? 0.0;
  set hotTemp(double? val) => _hotTemp = val;
  void incrementHotTemp(double amount) => _hotTemp = hotTemp + amount;
  bool hasHotTemp() => _hotTemp != null;

  // "pump_time" field.
  double? _pumpTime;
  double get pumpTime => _pumpTime ?? 0.0;
  set pumpTime(double? val) => _pumpTime = val;
  void incrementPumpTime(double amount) => _pumpTime = pumpTime + amount;
  bool hasPumpTime() => _pumpTime != null;

  // "light_time" field.
  double? _lightTime;
  double get lightTime => _lightTime ?? 0.0;
  set lightTime(double? val) => _lightTime = val;
  void incrementLightTime(double amount) => _lightTime = lightTime + amount;
  bool hasLightTime() => _lightTime != null;

  // "moisture_level" field.
  double? _moistureLevel;
  double get moistureLevel => _moistureLevel ?? 0.0;
  set moistureLevel(double? val) => _moistureLevel = val;
  void incrementMoistureLevel(double amount) =>
      _moistureLevel = moistureLevel + amount;
  bool hasMoistureLevel() => _moistureLevel != null;

  static PlantTypeStruct fromMap(Map<String, dynamic> data) => PlantTypeStruct(
        fanTime: castToType<double>(data['fan_time']),
        coldTemp: castToType<double>(data['cold_temp']),
        hotTemp: castToType<double>(data['hot_temp']),
        pumpTime: castToType<double>(data['pump_time']),
        lightTime: castToType<double>(data['light_time']),
        moistureLevel: castToType<double>(data['moisture_level']),
      );

  static PlantTypeStruct? maybeFromMap(dynamic data) => data is Map
      ? PlantTypeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'fan_time': _fanTime,
        'cold_temp': _coldTemp,
        'hot_temp': _hotTemp,
        'pump_time': _pumpTime,
        'light_time': _lightTime,
        'moisture_level': _moistureLevel,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fan_time': serializeParam(
          _fanTime,
          ParamType.double,
        ),
        'cold_temp': serializeParam(
          _coldTemp,
          ParamType.double,
        ),
        'hot_temp': serializeParam(
          _hotTemp,
          ParamType.double,
        ),
        'pump_time': serializeParam(
          _pumpTime,
          ParamType.double,
        ),
        'light_time': serializeParam(
          _lightTime,
          ParamType.double,
        ),
        'moisture_level': serializeParam(
          _moistureLevel,
          ParamType.double,
        ),
      }.withoutNulls;

  static PlantTypeStruct fromSerializableMap(Map<String, dynamic> data) =>
      PlantTypeStruct(
        fanTime: deserializeParam(
          data['fan_time'],
          ParamType.double,
          false,
        ),
        coldTemp: deserializeParam(
          data['cold_temp'],
          ParamType.double,
          false,
        ),
        hotTemp: deserializeParam(
          data['hot_temp'],
          ParamType.double,
          false,
        ),
        pumpTime: deserializeParam(
          data['pump_time'],
          ParamType.double,
          false,
        ),
        lightTime: deserializeParam(
          data['light_time'],
          ParamType.double,
          false,
        ),
        moistureLevel: deserializeParam(
          data['moisture_level'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'PlantTypeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PlantTypeStruct &&
        fanTime == other.fanTime &&
        coldTemp == other.coldTemp &&
        hotTemp == other.hotTemp &&
        pumpTime == other.pumpTime &&
        lightTime == other.lightTime &&
        moistureLevel == other.moistureLevel;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([fanTime, coldTemp, hotTemp, pumpTime, lightTime, moistureLevel]);
}

PlantTypeStruct createPlantTypeStruct({
  double? fanTime,
  double? coldTemp,
  double? hotTemp,
  double? pumpTime,
  double? lightTime,
  double? moistureLevel,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PlantTypeStruct(
      fanTime: fanTime,
      coldTemp: coldTemp,
      hotTemp: hotTemp,
      pumpTime: pumpTime,
      lightTime: lightTime,
      moistureLevel: moistureLevel,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PlantTypeStruct? updatePlantTypeStruct(
  PlantTypeStruct? plantType, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    plantType
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPlantTypeStructData(
  Map<String, dynamic> firestoreData,
  PlantTypeStruct? plantType,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (plantType == null) {
    return;
  }
  if (plantType.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && plantType.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final plantTypeData = getPlantTypeFirestoreData(plantType, forFieldValue);
  final nestedData = plantTypeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = plantType.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPlantTypeFirestoreData(
  PlantTypeStruct? plantType, [
  bool forFieldValue = false,
]) {
  if (plantType == null) {
    return {};
  }
  final firestoreData = mapToFirestore(plantType.toMap());

  // Add any Firestore field values
  plantType.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPlantTypeListFirestoreData(
  List<PlantTypeStruct>? plantTypes,
) =>
    plantTypes?.map((e) => getPlantTypeFirestoreData(e, true)).toList() ?? [];
