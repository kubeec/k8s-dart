// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_exec_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1ExecAction _$V1ExecActionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1ExecAction',
      json,
      ($checkedConvert) {
        final val = V1ExecAction(
          command: $checkedConvert('command',
              (v) => (v as List<dynamic>?)?.map((e) => e as String).toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1ExecActionToJson(V1ExecAction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('command', instance.command);
  return val;
}
