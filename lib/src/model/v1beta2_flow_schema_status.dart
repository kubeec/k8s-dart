//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_flow_schema_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_flow_schema_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2FlowSchemaStatus {
  /// Returns a new [V1beta2FlowSchemaStatus] instance.
  V1beta2FlowSchemaStatus({

     this.conditions,
  });

      /// `conditions` is a list of the current states of FlowSchema.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1beta2FlowSchemaCondition>? conditions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2FlowSchemaStatus &&
     other.conditions == conditions;

  @override
  int get hashCode =>
    conditions.hashCode;

  factory V1beta2FlowSchemaStatus.fromJson(Map<String, dynamic> json) => _$V1beta2FlowSchemaStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2FlowSchemaStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

