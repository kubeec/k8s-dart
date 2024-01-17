//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_node_resources.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeNodeResources {
  /// Returns a new [V1VolumeNodeResources] instance.
  V1VolumeNodeResources({

     this.count,
  });

      /// count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false
  )


  final int? count;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeNodeResources &&
     other.count == count;

  @override
  int get hashCode =>
    count.hashCode;

  factory V1VolumeNodeResources.fromJson(Map<String, dynamic> json) => _$V1VolumeNodeResourcesFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeNodeResourcesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

