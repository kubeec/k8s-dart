//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_api_service_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_api_service_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1APIServiceStatus {
  /// Returns a new [V1APIServiceStatus] instance.
  V1APIServiceStatus({

     this.conditions,
  });

      /// Current service state of apiService.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1APIServiceCondition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1APIServiceStatus &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    conditions.hashCode;

  factory V1APIServiceStatus.fromJson(Map<String, dynamic> json) => _$V1APIServiceStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1APIServiceStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

