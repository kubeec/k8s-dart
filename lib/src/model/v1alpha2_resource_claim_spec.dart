//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha2_resource_claim_parameters_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha2_resource_claim_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha2ResourceClaimSpec {
  /// Returns a new [V1alpha2ResourceClaimSpec] instance.
  V1alpha2ResourceClaimSpec({

     this.allocationMode,

     this.parametersRef,

    required  this.resourceClassName,
  });

      /// Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default.
  @JsonKey(
    
    name: r'allocationMode',
    required: false,
    includeIfNull: false
  )


  final String? allocationMode;



  @JsonKey(
    
    name: r'parametersRef',
    required: false,
    includeIfNull: false
  )


  final V1alpha2ResourceClaimParametersReference? parametersRef;



      /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  @JsonKey(
    
    name: r'resourceClassName',
    required: true,
    includeIfNull: false
  )


  final String resourceClassName;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha2ResourceClaimSpec &&
     other.allocationMode == allocationMode &&
     other.parametersRef == parametersRef &&
     other.resourceClassName == resourceClassName;

  @override
  int get hashCode =>
    allocationMode.hashCode +
    parametersRef.hashCode +
    resourceClassName.hashCode;

  factory V1alpha2ResourceClaimSpec.fromJson(Map<String, dynamic> json) => _$V1alpha2ResourceClaimSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha2ResourceClaimSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

