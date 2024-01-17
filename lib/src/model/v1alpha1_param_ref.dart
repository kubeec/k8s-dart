//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_param_ref.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ParamRef {
  /// Returns a new [V1alpha1ParamRef] instance.
  V1alpha1ParamRef({

     this.name,

     this.namespace,
  });

      /// Name of the resource being referenced.
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false
  )


  final String? name;



      /// Namespace of the referenced resource. Should be empty for the cluster-scoped resources
  @JsonKey(
    
    name: r'namespace',
    required: false,
    includeIfNull: false
  )


  final String? namespace;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ParamRef &&
     other.name == name &&
     other.namespace == namespace;

  @override
  int get hashCode =>
    name.hashCode +
    namespace.hashCode;

  factory V1alpha1ParamRef.fromJson(Map<String, dynamic> json) => _$V1alpha1ParamRefFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ParamRefToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

