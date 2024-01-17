//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_affinity_term.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_weighted_pod_affinity_term.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1WeightedPodAffinityTerm {
  /// Returns a new [V1WeightedPodAffinityTerm] instance.
  V1WeightedPodAffinityTerm({

    required  this.podAffinityTerm,

    required  this.weight,
  });

  @JsonKey(
    
    name: r'podAffinityTerm',
    required: true,
    includeIfNull: false
  )


  final V1PodAffinityTerm podAffinityTerm;



      /// weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
  @JsonKey(
    
    name: r'weight',
    required: true,
    includeIfNull: false
  )


  final int weight;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1WeightedPodAffinityTerm &&
     other.podAffinityTerm == podAffinityTerm &&
     other.weight == weight;

  @override
  int get hashCode =>
    podAffinityTerm.hashCode +
    weight.hashCode;

  factory V1WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json) => _$V1WeightedPodAffinityTermFromJson(json);

  Map<String, dynamic> toJson() => _$V1WeightedPodAffinityTermToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

