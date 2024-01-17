//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_daemon_set_update_strategy.dart';
import 'package:k8s/src/model/v1_label_selector.dart';
import 'package:k8s/src/model/v1_pod_template_spec.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_daemon_set_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1DaemonSetSpec {
  /// Returns a new [V1DaemonSetSpec] instance.
  V1DaemonSetSpec({

     this.minReadySeconds,

     this.revisionHistoryLimit,

    required  this.selector,

    required  this.template,

     this.updateStrategy,
  });

      /// The minimum number of seconds for which a newly created DaemonSet pod should be ready without any of its container crashing, for it to be considered available. Defaults to 0 (pod will be considered available as soon as it is ready).
  @JsonKey(
    
    name: r'minReadySeconds',
    required: false,
    includeIfNull: false
  )


  final int? minReadySeconds;



      /// The number of old history to retain to allow rollback. This is a pointer to distinguish between explicit zero and not specified. Defaults to 10.
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


  final V1DaemonSetUpdateStrategy? updateStrategy;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1DaemonSetSpec &&
     other.minReadySeconds == minReadySeconds &&
     other.revisionHistoryLimit == revisionHistoryLimit &&
     other.selector == selector &&
     other.template == template &&
     other.updateStrategy == updateStrategy;

  @override
  int get hashCode =>
    minReadySeconds.hashCode +
    revisionHistoryLimit.hashCode +
    selector.hashCode +
    template.hashCode +
    updateStrategy.hashCode;

  factory V1DaemonSetSpec.fromJson(Map<String, dynamic> json) => _$V1DaemonSetSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1DaemonSetSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

