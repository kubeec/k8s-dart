//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_affinity.dart';
import 'package:k8s/src/model/v1_node_affinity.dart';
import 'package:k8s/src/model/v1_pod_anti_affinity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_affinity.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1Affinity {
  /// Returns a new [V1Affinity] instance.
  V1Affinity({

     this.nodeAffinity,

     this.podAffinity,

     this.podAntiAffinity,
  });

  @JsonKey(
    
    name: r'nodeAffinity',
    required: false,
    includeIfNull: false
  )


  final V1NodeAffinity? nodeAffinity;



  @JsonKey(
    
    name: r'podAffinity',
    required: false,
    includeIfNull: false
  )


  final V1PodAffinity? podAffinity;



  @JsonKey(
    
    name: r'podAntiAffinity',
    required: false,
    includeIfNull: false
  )


  final V1PodAntiAffinity? podAntiAffinity;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1Affinity &&
     other.nodeAffinity == nodeAffinity &&
     other.podAffinity == podAffinity &&
     other.podAntiAffinity == podAntiAffinity;

  @override
  int get hashCode =>
    nodeAffinity.hashCode +
    podAffinity.hashCode +
    podAntiAffinity.hashCode;

  factory V1Affinity.fromJson(Map<String, dynamic> json) => _$V1AffinityFromJson(json);

  Map<String, dynamic> toJson() => _$V1AffinityToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

