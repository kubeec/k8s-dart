//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_http_ingress_path.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_http_ingress_rule_value.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HTTPIngressRuleValue {
  /// Returns a new [V1HTTPIngressRuleValue] instance.
  V1HTTPIngressRuleValue({

    required  this.paths,
  });

      /// paths is a collection of paths that map requests to backends.
  @JsonKey(
    
    name: r'paths',
    required: true,
    includeIfNull: false
  )


  final List<V1HTTPIngressPath> paths;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HTTPIngressRuleValue &&
     other.paths == paths;

  @override
  int get hashCode =>
    paths.hashCode;

  factory V1HTTPIngressRuleValue.fromJson(Map<String, dynamic> json) => _$V1HTTPIngressRuleValueFromJson(json);

  Map<String, dynamic> toJson() => _$V1HTTPIngressRuleValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

