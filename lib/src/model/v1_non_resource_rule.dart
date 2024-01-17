//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_non_resource_rule.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1NonResourceRule {
  /// Returns a new [V1NonResourceRule] instance.
  V1NonResourceRule({

     this.nonResourceURLs,

    required  this.verbs,
  });

      /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path.  \"*\" means all.
  @JsonKey(
    
    name: r'nonResourceURLs',
    required: false,
    includeIfNull: false
  )


  final List<String>? nonResourceURLs;



      /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  \"*\" means all.
  @JsonKey(
    
    name: r'verbs',
    required: true,
    includeIfNull: false
  )


  final List<String> verbs;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1NonResourceRule &&
     other.nonResourceURLs == nonResourceURLs &&
     other.verbs == verbs;

  @override
  int get hashCode =>
    nonResourceURLs.hashCode +
    verbs.hashCode;

  factory V1NonResourceRule.fromJson(Map<String, dynamic> json) => _$V1NonResourceRuleFromJson(json);

  Map<String, dynamic> toJson() => _$V1NonResourceRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

