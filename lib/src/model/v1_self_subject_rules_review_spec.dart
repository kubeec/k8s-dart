//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_self_subject_rules_review_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1SelfSubjectRulesReviewSpec {
  /// Returns a new [V1SelfSubjectRulesReviewSpec] instance.
  V1SelfSubjectRulesReviewSpec({

     this.namespace,
  });

      /// Namespace to evaluate rules for. Required.
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1SelfSubjectRulesReviewSpec &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    namespace.hashCode;

  factory V1SelfSubjectRulesReviewSpec.fromJson(Map<String, dynamic> json) => _$V1SelfSubjectRulesReviewSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1SelfSubjectRulesReviewSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

