//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta3_flow_schema_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_flow_schema_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3FlowSchemaStatus {
  /// Returns a new [V1beta3FlowSchemaStatus] instance.
  V1beta3FlowSchemaStatus({

     this.conditions,
  });

      /// `conditions` is a list of the current states of FlowSchema.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1beta3FlowSchemaCondition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3FlowSchemaStatus &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    conditions.hashCode;

  factory V1beta3FlowSchemaStatus.fromJson(Map<String, dynamic> json) => _$V1beta3FlowSchemaStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3FlowSchemaStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

