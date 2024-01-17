//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_custom_resource_definition_condition.dart';
import 'package:k8s/src/model/v1_custom_resource_definition_names.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_custom_resource_definition_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1CustomResourceDefinitionStatus {
  /// Returns a new [V1CustomResourceDefinitionStatus] instance.
  V1CustomResourceDefinitionStatus({

     this.acceptedNames,

     this.conditions,

     this.storedVersions,
  });

  @JsonKey(
    
    name: r'acceptedNames',
    required: false,
    includeIfNull: false
  )


  final V1CustomResourceDefinitionNames? acceptedNames;



      /// conditions indicate state for particular aspects of a CustomResourceDefinition
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1CustomResourceDefinitionCondition>? conditions;



      /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these versions allows a migration path for stored versions in etcd. The field is mutable so a migration controller can finish a migration to another version (ensuring no old objects are left in storage), and then remove the rest of the versions from this list. Versions may not be removed from `spec.versions` while they exist in this list.
  @JsonKey(
    
    name: r'storedVersions',
    required: false,
    includeIfNull: false
  )


  final List<String>? storedVersions;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1CustomResourceDefinitionStatus &&
     other.acceptedNames == acceptedNames &&
     other.conditions == conditions &&
     other.storedVersions == storedVersions;

  @override
  int get hashCode =>
    acceptedNames.hashCode +
    conditions.hashCode +
    storedVersions.hashCode;

  factory V1CustomResourceDefinitionStatus.fromJson(Map<String, dynamic> json) => _$V1CustomResourceDefinitionStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1CustomResourceDefinitionStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

