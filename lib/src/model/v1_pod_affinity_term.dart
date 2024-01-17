//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_pod_affinity_term.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1PodAffinityTerm {
  /// Returns a new [V1PodAffinityTerm] instance.
  V1PodAffinityTerm({

     this.labelSelector,

     this.namespaceSelector,

     this.namespaces,

    required  this.topologyKey,
  });

  @JsonKey(
    
    name: r'labelSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? labelSelector;



  @JsonKey(
    
    name: r'namespaceSelector',
    required: false,
    includeIfNull: false
  )


  final V1LabelSelector? namespaceSelector;



      /// namespaces specifies a static list of namespace names that the term applies to. The term is applied to the union of the namespaces listed in this field and the ones selected by namespaceSelector. null or empty namespaces list and null namespaceSelector means \"this pod's namespace\".
  @JsonKey(
    
    name: r'namespaces',
    required: false,
    includeIfNull: false
  )


  final List<String>? namespaces;



      /// This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods matching the labelSelector in the specified namespaces, where co-located is defined as running on a node whose value of the label with key topologyKey matches that of any node on which any of the selected pods is running. Empty topologyKey is not allowed.
  @JsonKey(
    
    name: r'topologyKey',
    required: true,
    includeIfNull: false
  )


  final String topologyKey;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1PodAffinityTerm &&
     other.labelSelector == labelSelector &&
     other.namespaceSelector == namespaceSelector &&
     other.namespaces == namespaces &&
     other.topologyKey == topologyKey;

  @override
  int get hashCode =>
    labelSelector.hashCode +
    namespaceSelector.hashCode +
    namespaces.hashCode +
    topologyKey.hashCode;

  factory V1PodAffinityTerm.fromJson(Map<String, dynamic> json) => _$V1PodAffinityTermFromJson(json);

  Map<String, dynamic> toJson() => _$V1PodAffinityTermToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

