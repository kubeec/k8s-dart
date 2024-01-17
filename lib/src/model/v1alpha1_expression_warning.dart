//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_expression_warning.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ExpressionWarning {
  /// Returns a new [V1alpha1ExpressionWarning] instance.
  V1alpha1ExpressionWarning({

    required  this.fieldRef,

    required  this.warning,
  });

      /// The path to the field that refers the expression. For example, the reference to the expression of the first item of validations is \"spec.validations[0].expression\"
  @JsonKey(
    
    name: r'fieldRef',
    required: true,
    includeIfNull: false
  )


  final String fieldRef;



      /// The content of type checking information in a human-readable form. Each line of the warning contains the type that the expression is checked against, followed by the type check error from the compiler.
  @JsonKey(
    
    name: r'warning',
    required: true,
    includeIfNull: false
  )


  final String warning;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ExpressionWarning &&
     other.fieldRef == fieldRef &&
     other.warning == warning;

  @override
  int get hashCode =>
    fieldRef.hashCode +
    warning.hashCode;

  factory V1alpha1ExpressionWarning.fromJson(Map<String, dynamic> json) => _$V1alpha1ExpressionWarningFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ExpressionWarningToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

