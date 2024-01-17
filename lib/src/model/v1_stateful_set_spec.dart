//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_stateful_set_ordinals.dart';
import 'package:k8s/src/model/v1_stateful_set_update_strategy.dart';
import 'package:k8s/src/model/v1_persistent_volume_claim.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:k8s/src/model/v1_stateful_set_persistent_volume_claim_retention_policy.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_stateful_set_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1StatefulSetSpec {
  /// Returns a new [V1StatefulSetSpec] instance.
  V1StatefulSetSpec({

     this.minReadySeconds,

     this.ordinals,

     this.persistentVolumeClaimRetentionPolicy,

     this.podManagementPolicy,

     this.replicas,

     this.revisionHistoryLimit,

    required  this.selector,

    required  this.serviceName,

    required  this.template,

     this.updateStrategy,

     this.volumeClaimTemplates,
  });

      /// Minimum number of seconds for which a newly created pod should be ready without any of its container crashing for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready)
  @JsonKey(
    
    name: r'minReadySeconds',
    required: false,
    includeIfNull: false
  )


  final int? minReadySeconds;



  @JsonKey(
    
    name: r'ordinals',
    required: false,
    includeIfNull: false
  )


  final V1StatefulSetOrdinals? ordinals;



  @JsonKey(
    
    name: r'persistentVolumeClaimRetentionPolicy',
    required: false,
    includeIfNull: false
  )


  final V1StatefulSetPersistentVolumeClaimRetentionPolicy? persistentVolumeClaimRetentionPolicy;



      /// podManagementPolicy controls how pods are created during initial scale up, when replacing pods on nodes, or when scaling down. The default policy is `OrderedReady`, where pods are created in increasing order (pod-0, then pod-1, etc) and the controller will wait until each pod is ready before continuing. When scaling down, the pods are removed in the opposite order. The alternative policy is `Parallel` which will create pods in parallel to match the desired scale without waiting, and on scale down will delete all pods at once.
  @JsonKey(
    
    name: r'podManagementPolicy',
    required: false,
    includeIfNull: false
  )


  final String? podManagementPolicy;



      /// replicas is the desired number of replicas of the given Template. These are replicas in the sense that they are instantiations of the same Template, but individual replicas also have a consistent identity. If unspecified, defaults to 1.
  @JsonKey(
    
    name: r'replicas',
    required: false,
    includeIfNull: false
  )


  final int? replicas;



      /// revisionHistoryLimit is the maximum number of revisions that will be maintained in the StatefulSet's revision history. The revision history consists of all revisions not represented by a currently applied StatefulSetSpec version. The default value is 10.
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



      /// serviceName is the name of the service that governs this StatefulSet. This service must exist before the StatefulSet, and is responsible for the network identity of the set. Pods get DNS/hostnames that follow the pattern: pod-specific-string.serviceName.default.svc.cluster.local where \"pod-specific-string\" is managed by the StatefulSet controller.
  @JsonKey(
    
    name: r'serviceName',
    required: true,
    includeIfNull: false
  )


  final String serviceName;



  @JsonKey(
    
    name: r'template',
    required: true,
    includeIfNull: false
  )


  final V1PodTemplateSpec template;



  @JsonKey(
    
    name: r'updateStrategy',
    required: false,
    includeIfNull: false
  )


  final V1StatefulSetUpdateStrategy? updateStrategy;



      /// volumeClaimTemplates is a list of claims that pods are allowed to reference. The StatefulSet controller is responsible for mapping network identities to claims in a way that maintains the identity of a pod. Every claim in this list must have at least one matching (by name) volumeMount in one container in the template. A claim in this list takes precedence over any volumes in the template, with the same name.
  @JsonKey(
    
    name: r'volumeClaimTemplates',
    required: false,
    includeIfNull: false
  )


  final List<V1PersistentVolumeClaim>? volumeClaimTemplates;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1StatefulSetSpec &&
     other.minReadySeconds == minReadySeconds &&
     other.ordinals == ordinals &&
     other.persistentVolumeClaimRetentionPolicy == persistentVolumeClaimRetentionPolicy &&
     other.podManagementPolicy == podManagementPolicy &&
     other.replicas == replicas &&
     other.revisionHistoryLimit == revisionHistoryLimit &&
     other.selector == selector &&
     other.serviceName == serviceName &&
     other.template == template &&
     other.updateStrategy == updateStrategy &&
     other.volumeClaimTemplates == volumeClaimTemplates;

  @override
  int get hashCode =>
    minReadySeconds.hashCode +
    ordinals.hashCode +
    persistentVolumeClaimRetentionPolicy.hashCode +
    podManagementPolicy.hashCode +
    replicas.hashCode +
    revisionHistoryLimit.hashCode +
    selector.hashCode +
    serviceName.hashCode +
    template.hashCode +
    updateStrategy.hashCode +
    volumeClaimTemplates.hashCode;

  factory V1StatefulSetSpec.fromJson(Map<String, dynamic> json) => _$V1StatefulSetSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1StatefulSetSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

