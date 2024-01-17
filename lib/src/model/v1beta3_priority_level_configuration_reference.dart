//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_priority_level_configuration_reference.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3PriorityLevelConfigurationReference {
  /// Returns a new [V1beta3PriorityLevelConfigurationReference] instance.
  V1beta3PriorityLevelConfigurationReference({

    required  this.name,
  });

      /// `name` is the name of the priority level configuration being referenced Required.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3PriorityLevelConfigurationReference &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1beta3PriorityLevelConfigurationReference.fromJson(Map<String, dynamic> json) => _$V1beta3PriorityLevelConfigurationReferenceFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3PriorityLevelConfigurationReferenceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

