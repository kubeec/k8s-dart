// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1_mutating_webhook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1MutatingWebhook _$V1MutatingWebhookFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'V1MutatingWebhook',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const [
            'admissionReviewVersions',
            'clientConfig',
            'name',
            'sideEffects'
          ],
        );
        final val = V1MutatingWebhook(
          admissionReviewVersions: $checkedConvert('admissionReviewVersions',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
          clientConfig: $checkedConvert(
              'clientConfig',
              (v) => AdmissionregistrationV1WebhookClientConfig.fromJson(
                  v as Map<String, dynamic>)),
          failurePolicy: $checkedConvert('failurePolicy', (v) => v as String?),
          matchConditions: $checkedConvert(
              'matchConditions',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1MatchCondition.fromJson(e as Map<String, dynamic>))
                  .toList()),
          matchPolicy: $checkedConvert('matchPolicy', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String),
          namespaceSelector: $checkedConvert(
              'namespaceSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          objectSelector: $checkedConvert(
              'objectSelector',
              (v) => v == null
                  ? null
                  : V1LabelSelector.fromJson(v as Map<String, dynamic>)),
          reinvocationPolicy:
              $checkedConvert('reinvocationPolicy', (v) => v as String?),
          rules: $checkedConvert(
              'rules',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      V1RuleWithOperations.fromJson(e as Map<String, dynamic>))
                  .toList()),
          sideEffects: $checkedConvert('sideEffects', (v) => v as String),
          timeoutSeconds: $checkedConvert('timeoutSeconds', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1MutatingWebhookToJson(V1MutatingWebhook instance) {
  final val = <String, dynamic>{
    'admissionReviewVersions': instance.admissionReviewVersions,
    'clientConfig': instance.clientConfig.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failurePolicy', instance.failurePolicy);
  writeNotNull('matchConditions',
      instance.matchConditions?.map((e) => e.toJson()).toList());
  writeNotNull('matchPolicy', instance.matchPolicy);
  val['name'] = instance.name;
  writeNotNull('namespaceSelector', instance.namespaceSelector?.toJson());
  writeNotNull('objectSelector', instance.objectSelector?.toJson());
  writeNotNull('reinvocationPolicy', instance.reinvocationPolicy);
  writeNotNull('rules', instance.rules?.map((e) => e.toJson()).toList());
  val['sideEffects'] = instance.sideEffects;
  writeNotNull('timeoutSeconds', instance.timeoutSeconds);
  return val;
}
