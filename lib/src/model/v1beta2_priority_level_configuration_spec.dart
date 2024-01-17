//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_limited_priority_level_configuration.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_priority_level_configuration_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2PriorityLevelConfigurationSpec {
  /// Returns a new [V1beta2PriorityLevelConfigurationSpec] instance.
  V1beta2PriorityLevelConfigurationSpec({

     this.limited,

    required  this.type,
  });

  @JsonKey(
    
    name: r'limited',
    required: false,
    includeIfNull: false
  )


  final V1beta2LimitedPriorityLevelConfiguration? limited;



      /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `\"Exempt\"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `\"Limited\"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false
  )


  final String type;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2PriorityLevelConfigurationSpec &&
     other.limited == limited &&
     other.type == type;

  @override
  int get hashCode =>
    limited.hashCode +
    type.hashCode;

  factory V1beta2PriorityLevelConfigurationSpec.fromJson(Map<String, dynamic> json) => _$V1beta2PriorityLevelConfigurationSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2PriorityLevelConfigurationSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

