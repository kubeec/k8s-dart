//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_class_parameters_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_ingress_class_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IngressClassSpec {
  /// Returns a new [V1IngressClassSpec] instance.
  V1IngressClassSpec({

     this.controller,

     this.parameters,
  });

      /// controller refers to the name of the controller that should handle this class. This allows for different \"flavors\" that are controlled by the same controller. For example, you may have different parameters for the same implementing controller. This should be specified as a domain-prefixed path no more than 250 characters in length, e.g. \"acme.io/ingress-controller\". This field is immutable.
  @JsonKey(
    
    name: r'controller',
    required: false,
    includeIfNull: false
  )


  final String? controller;



  @JsonKey(
    
    name: r'parameters',
    required: false,
    includeIfNull: false
  )


  final V1IngressClassParametersReference? parameters;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IngressClassSpec &&
     other.controller == controller &&
     other.parameters == parameters;

  @override
  int get hashCode =>
    controller.hashCode +
    parameters.hashCode;

  factory V1IngressClassSpec.fromJson(Map<String, dynamic> json) => _$V1IngressClassSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1IngressClassSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

