//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_param_kind.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ParamKind {
  /// Returns a new [V1alpha1ParamKind] instance.
  V1alpha1ParamKind({

     this.apiVersion,

     this.kind,
  });

      /// APIVersion is the API group version the resources belong to. In format of \"group/version\". Required.
  @JsonKey(
    
    name: r'apiVersion',
    required: false,
    includeIfNull: false
  )


  final String? apiVersion;



      /// Kind is the API kind the resources belong to. Required.
  @JsonKey(
    
    name: r'kind',
    required: false,
    includeIfNull: false
  )


  final String? kind;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ParamKind &&
     other.apiVersion == apiVersion &&
     other.kind == kind;

  @override
  int get hashCode =>
    apiVersion.hashCode +
    kind.hashCode;

  factory V1alpha1ParamKind.fromJson(Map<String, dynamic> json) => _$V1alpha1ParamKindFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ParamKindToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

