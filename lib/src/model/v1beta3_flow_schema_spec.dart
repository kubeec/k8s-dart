//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta3_priority_level_configuration_reference.dart';
import 'package:k8s/src/model/v1beta3_policy_rules_with_subjects.dart';
import 'package:k8s/src/model/v1beta3_flow_distinguisher_method.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_flow_schema_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3FlowSchemaSpec {
  /// Returns a new [V1beta3FlowSchemaSpec] instance.
  V1beta3FlowSchemaSpec({

     this.distinguisherMethod,

     this.matchingPrecedence,

    required  this.priorityLevelConfiguration,

     this.rules,
  });

  @JsonKey(
    
    name: r'distinguisherMethod',
    required: false,
    includeIfNull: false
  )


  final V1beta3FlowDistinguisherMethod? distinguisherMethod;



      /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000]. Note that if the precedence is not specified, it will be set to 1000 as default.
  @JsonKey(
    
    name: r'matchingPrecedence',
    required: false,
    includeIfNull: false
  )


  final int? matchingPrecedence;



  @JsonKey(
    
    name: r'priorityLevelConfiguration',
    required: true,
    includeIfNull: false
  )


  final V1beta3PriorityLevelConfigurationReference priorityLevelConfiguration;



      /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  @JsonKey(
    
    name: r'rules',
    required: false,
    includeIfNull: false
  )


  final List<V1beta3PolicyRulesWithSubjects>? rules;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3FlowSchemaSpec &&
     other.distinguisherMethod == distinguisherMethod &&
     other.matchingPrecedence == matchingPrecedence &&
     other.priorityLevelConfiguration == priorityLevelConfiguration &&
     other.rules == rules;

  @override
  int get hashCode =>
    distinguisherMethod.hashCode +
    matchingPrecedence.hashCode +
    priorityLevelConfiguration.hashCode +
    rules.hashCode;

  factory V1beta3FlowSchemaSpec.fromJson(Map<String, dynamic> json) => _$V1beta3FlowSchemaSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3FlowSchemaSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

