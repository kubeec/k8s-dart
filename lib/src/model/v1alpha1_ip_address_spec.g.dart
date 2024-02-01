// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'v1alpha1_ip_address_spec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

V1alpha1IPAddressSpec _$V1alpha1IPAddressSpecFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'V1alpha1IPAddressSpec',
      json,
      ($checkedConvert) {
        final val = V1alpha1IPAddressSpec(
          parentRef: $checkedConvert(
              'parentRef',
              (v) => v == null
                  ? null
                  : V1alpha1ParentReference.fromJson(
                      v as Map<String, dynamic>)),
        );
        return val;
      },
    );

Map<String, dynamic> _$V1alpha1IPAddressSpecToJson(
    V1alpha1IPAddressSpec instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('parentRef', instance.parentRef?.toJson());
  return val;
}
