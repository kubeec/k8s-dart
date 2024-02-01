// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_deployment_strategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1DeploymentStrategy _$V1DeploymentStrategyFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1DeploymentStrategy',
      json,
      ($checkedConvert) {
        final val = V1DeploymentStrategy(
          rollingUpdate: $checkedConvert(
              'rollingUpdate',
              (v) => v == null
                  ? null
                  : V1RollingUpdateDeployment.fromJson(
                      v as Map<String, dynamic>)),
          type: $checkedConvert('type', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1DeploymentStrategyToJson(
    V1DeploymentStrategy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rollingUpdate', instance.rollingUpdate?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
