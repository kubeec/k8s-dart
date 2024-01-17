//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_audit_annotation.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1AuditAnnotation {
  /// Returns a new [V1alpha1AuditAnnotation] instance.
  V1alpha1AuditAnnotation({

    required  this.key,

    required  this.valueExpression,
  });

      /// key specifies the audit annotation key. The audit annotation keys of a ValidatingAdmissionPolicy must be unique. The key must be a qualified name ([A-Za-z0-9][-A-Za-z0-9_.]*) no more than 63 bytes in length.  The key is combined with the resource name of the ValidatingAdmissionPolicy to construct an audit annotation key: \"{ValidatingAdmissionPolicy name}/{key}\".  If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy and the same audit annotation key, the annotation key will be identical. In this case, the first annotation written with the key will be included in the audit event and all subsequent annotations with the same key will be discarded.  Required.
  @JsonKey(
    
    name: r'key',
    required: true,
    includeIfNull: false
  )


  final String key;



      /// valueExpression represents the expression which is evaluated by CEL to produce an audit annotation value. The expression must evaluate to either a string or null value. If the expression evaluates to a string, the audit annotation is included with the string value. If the expression evaluates to null or empty string the audit annotation will be omitted. The valueExpression may be no longer than 5kb in length. If the result of the valueExpression is more than 10kb in length, it will be truncated to 10kb.  If multiple ValidatingAdmissionPolicyBinding resources match an API request, then the valueExpression will be evaluated for each binding. All unique values produced by the valueExpressions will be joined together in a comma-separated list.  Required.
  @JsonKey(
    
    name: r'valueExpression',
    required: true,
    includeIfNull: false
  )


  final String valueExpression;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1AuditAnnotation &&
     other.key == key &&
     other.valueExpression == valueExpression;

  @override
  int get hashCode =>
    key.hashCode +
    valueExpression.hashCode;

  factory V1alpha1AuditAnnotation.fromJson(Map<String, dynamic> json) => _$V1alpha1AuditAnnotationFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1AuditAnnotationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

