//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_replication_controller_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ReplicationControllerSpec {
  /// Returns a new [V1ReplicationControllerSpec] instance.
  V1ReplicationControllerSpec({

     this.minReadySeconds,

     this.replicas,

     this.selector,

     this.template,
  });

      /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @JsonKey(
    
    name: r'minReadySeconds',
    required: false,
    includeIfNull: false
  )


  final int? minReadySeconds;



      /// Replicas is the number of desired replicas. This is a pointer to distinguish between explicit zero and unspecified. Defaults to 1. More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



      /// Selector is a label query over pods that should match the Replicas count. If Selector is empty, it is defaulted to the labels present on the Pod template. Label keys and values that must match in order to be controlled by this replication controller, if empty defaulted to labels on Pod template. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  @JsonKey(
    
    name: r'selector',
    required: false,
    includeIfNull: false
  )


  final Map<String, String>? selector;



  @JsonKey(
    
    name: r'template',
    required: false,
    includeIfNull: false
  )


  final V1PodTemplateSpec? template;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ReplicationControllerSpec &&
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

  factory V1ReplicationControllerSpec.fromJson(Map<String, dynamic> json) => _$V1ReplicationControllerSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1ReplicationControllerSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

