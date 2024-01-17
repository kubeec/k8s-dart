//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_parent_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_ip_address_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1IPAddressSpec {
  /// Returns a new [V1alpha1IPAddressSpec] instance.
  V1alpha1IPAddressSpec({

     this.parentRef,
  });

  @JsonKey(
    
    name: r'parentRef',
    required: false,
    includeIfNull: false
  )


  final V1alpha1ParentReference? parentRef;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1IPAddressSpec &&
     other.parentRef == parentRef;

  @override
  int get hashCode =>
    parentRef.hashCode;

  factory V1alpha1IPAddressSpec.fromJson(Map<String, dynamic> json) => _$V1alpha1IPAddressSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1IPAddressSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

