//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_node_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_volume_node_affinity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1VolumeNodeAffinity {
  /// Returns a new [V1VolumeNodeAffinity] instance.
  V1VolumeNodeAffinity({

     this.required_,
  });

  @JsonKey(
    
    name: r'required',
    required: false,
    includeIfNull: false
  )


  final V1NodeSelector? required_;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1VolumeNodeAffinity &&
     other.required_ == required_;

  @override
  int get hashCode =>
    required_.hashCode;

  factory V1VolumeNodeAffinity.fromJson(Map<String, dynamic> json) => _$V1VolumeNodeAffinityFromJson(json);

  Map<String, dynamic> toJson() => _$V1VolumeNodeAffinityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

