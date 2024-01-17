//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_container_resize_policy.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ContainerResizePolicy {
  /// Returns a new [V1ContainerResizePolicy] instance.
  V1ContainerResizePolicy({

    required  this.resourceName,

    required  this.restartPolicy,
  });

      /// Name of the resource to which this resource resize policy applies. Supported values: cpu, memory.
  @JsonKey(
    
    name: r'resourceName',
    required: true,
    includeIfNull: false
  )


  final String resourceName;



      /// Restart policy to apply when specified resource is resized. If not specified, it defaults to NotRequired.
  @JsonKey(
    
    name: r'restartPolicy',
    required: true,
    includeIfNull: false
  )


  final String restartPolicy;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ContainerResizePolicy &&
     other.resourceName == resourceName &&
     other.restartPolicy == restartPolicy;

  @override
  int get hashCode =>
    resourceName.hashCode +
    restartPolicy.hashCode;

  factory V1ContainerResizePolicy.fromJson(Map<String, dynamic> json) => _$V1ContainerResizePolicyFromJson(json);

  Map<String, dynamic> toJson() => _$V1ContainerResizePolicyToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

