//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1alpha1_expression_warning.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_type_checking.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1TypeChecking {
  /// Returns a new [V1alpha1TypeChecking] instance.
  V1alpha1TypeChecking({

     this.expressionWarnings,
  });

      /// The type checking warnings for each expression.
  @JsonKey(
    
    name: r'expressionWarnings',
    required: false,
    includeIfNull: false
  )


  final List<V1alpha1ExpressionWarning>? expressionWarnings;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1TypeChecking &&
     other.expressionWarnings == expressionWarnings;

  @override
  int get hashCode =>
    expressionWarnings.hashCode;

  factory V1alpha1TypeChecking.fromJson(Map<String, dynamic> json) => _$V1alpha1TypeCheckingFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1TypeCheckingToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

