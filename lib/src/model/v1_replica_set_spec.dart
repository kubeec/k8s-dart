//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_replica_set_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ReplicaSetSpec {
  /// Returns a new [V1ReplicaSetSpec] instance.
  V1ReplicaSetSpec({

     this.minReadySeconds,

     this.replicas,

    required  this.selector,

     this.template,
  });

      /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @JsonKey(
    
    name: r'minReadySeconds',
    required: false,
    includeIfNull: false
  )


  final int? minReadySeconds;



      /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



  @JsonKey(
    
    name: r'selector',
    required: true,
    includeIfNull: false
  )


  final V1LabelSelector selector;



  @JsonKey(
    
    name: r'template',
    required: false,
    includeIfNull: false
  )


  final V1PodTemplateSpec? template;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ReplicaSetSpec &&
     other.minReadySeconds == minReadySeconds &&
     other.replicas == replicas &&
     other.selector == selector &&
     other.template == template;

  @override
  int get hashCode =>
    minReadySeconds.hashCode +
    replicas.hashCode +
    selector.hashCode +
    template.hashCode;

  factory V1ReplicaSetSpec.fromJson(Map<String, dynamic> json) => _$V1ReplicaSetSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1ReplicaSetSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

