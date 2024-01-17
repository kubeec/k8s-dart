//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_deployment_strategy.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_deployment_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DeploymentSpec {
  /// Returns a new [V1DeploymentSpec] instance.
  V1DeploymentSpec({

     this.minReadySeconds,

     this.paused,

     this.progressDeadlineSeconds,

     this.replicas,

     this.revisionHistoryLimit,

    required  this.selector,

     this.strategy,

    required  this.template,
  });

      /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @JsonKey(
    
    name: r'minReadySeconds',
    required: false,
    includeIfNull: false
  )


  final int? minReadySeconds;



      /// Indicates that the deployment is paused.
  @JsonKey(
    
    name: r'paused',
    required: false,
    includeIfNull: false
  )


  final bool? paused;



      /// The maximum time in seconds for a deployment to make progress before it is considered to be failed. The deployment controller will continue to process failed deployments and a condition with a ProgressDeadlineExceeded reason will be surfaced in the deployment status. Note that progress will not be estimated during the time a deployment is paused. Defaults to 600s.
  @JsonKey(
    
    name: r'progressDeadlineSeconds',
    required: false,
    includeIfNull: false
  )


  final int? progressDeadlineSeconds;



      /// Number of desired pods. This is a pointer to distinguish between explicit zero and not specified. Defaults to 1.
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



      /// The number of old ReplicaSets to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
  @JsonKey(
    
    name: r'revisionHistoryLimit',
    required: false,
    includeIfNull: false
  )


  final int? revisionHistoryLimit;



  @JsonKey(
    
    name: r'selector',
    required: true,
    includeIfNull: false
  )


  final V1LabelSelector selector;



  @JsonKey(
    
    name: r'strategy',
    required: false,
    includeIfNull: false
  )


  final V1DeploymentStrategy? strategy;



  @JsonKey(
    
    name: r'template',
    required: true,
    includeIfNull: false
  )


  final V1PodTemplateSpec template;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DeploymentSpec &&
     other.minReadySeconds == minReadySeconds &&
     other.paused == paused &&
     other.progressDeadlineSeconds == progressDeadlineSeconds &&
     other.replicas == replicas &&
     other.revisionHistoryLimit == revisionHistoryLimit &&
     other.selector == selector &&
     other.strategy == strategy &&
     other.template == template;

  @override
  int get hashCode =>
    minReadySeconds.hashCode +
    paused.hashCode +
    progressDeadlineSeconds.hashCode +
    replicas.hashCode +
    revisionHistoryLimit.hashCode +
    selector.hashCode +
    strategy.hashCode +
    template.hashCode;

  factory V1DeploymentSpec.fromJson(Map<String, dynamic> json) => _$V1DeploymentSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1DeploymentSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

