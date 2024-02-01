// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_type_checking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1TypeChecking _$V1alpha1TypeCheckingFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1TypeChecking',
      json,
      ($checkedConvert) {
        final val = V1alpha1TypeChecking(
          expressionWarnings: $checkedConvert(
              'expressionWarnings',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => V1alpha1ExpressionWarning.fromJson(
                      e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1TypeCheckingToJson(
    V1alpha1TypeChecking instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('expressionWarnings',
      instance.expressionWarnings?.map((e) => e.toJson()).toList());
  return val;
}
