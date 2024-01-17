//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_resource_field_selector.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ResourceFieldSelector {
  /// Returns a new [V1ResourceFieldSelector] instance.
  V1ResourceFieldSelector({

     this.containerName,

     this.divisor,

    required  this.resource,
  });

      /// Container name: required for volumes, optional for env vars
  @JsonKey(
    
    name: r'containerName',
    required: false,
    includeIfNull: false
  )


  final String? containerName;



      /// Specifies the output format of the exposed resources, defaults to \"1\"
  @JsonKey(
    
    name: r'divisor',
    required: false,
    includeIfNull: false
  )


  final String? divisor;



      /// Required: resource to select
  @JsonKey(
    
    name: r'resource',
    required: true,
    includeIfNull: false
  )


  final String resource;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ResourceFieldSelector &&
     other.containerName == containerName &&
     other.divisor == divisor &&
     other.resource == resource;

  @override
  int get hashCode =>
    containerName.hashCode +
    divisor.hashCode +
    resource.hashCode;

  factory V1ResourceFieldSelector.fromJson(Map<String, dynamic> json) => _$V1ResourceFieldSelectorFromJson(json);

  Map<String, dynamic> toJson() => _$V1ResourceFieldSelectorToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

