//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_namespace_condition.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_namespace_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NamespaceStatus {
  /// Returns a new [V1NamespaceStatus] instance.
  V1NamespaceStatus({

     this.conditions,

     this.phase,
  });

      /// Represents the latest available observations of a namespace's current state.
  @JsonKey(
    
    name: r'conditions',
    required: false,
    includeIfNull: false
  )


  final List<V1NamespaceCondition>? conditions;



      /// Phase is the current lifecycle phase of the namespace. More info: https://kubernetes.io/docs/tasks/administer-cluster/namespaces/
  @JsonKey(
    
    name: r'phase',
    required: false,
    includeIfNull: false
  )


  final String? phase;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NamespaceStatus &&
     other.conditions == conditions &&
     other.phase == phase;

  @override
  int get hashCode =>
    conditions.hashCode +
    phase.hashCode;

  factory V1NamespaceStatus.fromJson(Map<String, dynamic> json) => _$V1NamespaceStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1NamespaceStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

