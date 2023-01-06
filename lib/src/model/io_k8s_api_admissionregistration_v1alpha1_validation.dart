//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_validation.g.dart';

/// Validation specifies the CEL expression which is used to apply the validation.
///
/// Properties:
/// * [expression] - Expression represents the expression which will be evaluated by CEL. ref: https://github.com/google/cel-spec CEL expressions have access to the contents of the Admission request/response, organized into CEL variables as well as some other useful variables:  'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission request([ref](/pkg/apis/admission/types.go#AdmissionRequest)). 'params' - Parameter resource referred to by the policy binding being evaluated. Only populated if the policy has a ParamKind.  The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always accessible from the root of the object. No other metadata properties are accessible.  Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible. Accessible property names are escaped according to the following rules when accessed in the expression: - '__' escapes to '__underscores__' - '.' escapes to '__dot__' - '-' escapes to '__dash__' - '/' escapes to '__slash__' - Property names that exactly match a CEL RESERVED keyword escape to '__{keyword}__'. The keywords are:    \"true\", \"false\", \"null\", \"in\", \"as\", \"break\", \"const\", \"continue\", \"else\", \"for\", \"function\", \"if\",    \"import\", \"let\", \"loop\", \"package\", \"namespace\", \"return\". Examples:   - Expression accessing a property named \"namespace\": {\"Expression\": \"object.__namespace__ > 0\"}   - Expression accessing a property named \"x-prop\": {\"Expression\": \"object.x__dash__prop > 0\"}   - Expression accessing a property named \"redact__d\": {\"Expression\": \"object.redact__underscores__d > 0\"}  Equality on arrays with list type of 'set' or 'map' ignores element order, i.e. [1, 2] == [2, 1]. Concatenation on arrays with x-kubernetes-list-type use the semantics of the list type:   - 'set': `X + Y` performs a union where the array positions of all elements in `X` are preserved and     non-intersecting elements in `Y` are appended, retaining their partial order.   - 'map': `X + Y` performs a merge where the array positions of all keys in `X` are preserved but the values     are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in `Y` with     non-intersecting keys are appended, retaining their partial order. Required.
/// * [message] - Message represents the message displayed when validation fails. The message is required if the Expression contains line breaks. The message must not contain line breaks. If unset, the message is \"failed rule: {Rule}\". e.g. \"must be a URL with the host matching spec.host\" If the Expression contains line breaks. Message is required. The message must not contain line breaks. If unset, the message is \"failed Expression: {Expression}\".
/// * [reason] - Reason represents a machine-readable description of why this validation failed. If this is the first validation in the list to fail, this reason, as well as the corresponding HTTP response code, are used in the HTTP response to the client. The currently supported reasons are: \"Unauthorized\", \"Forbidden\", \"Invalid\", \"RequestEntityTooLarge\". If not set, StatusReasonInvalid is used in the response to the client.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1Validation implements Built<IoK8sApiAdmissionregistrationV1alpha1Validation, IoK8sApiAdmissionregistrationV1alpha1ValidationBuilder> {
  /// Expression represents the expression which will be evaluated by CEL. ref: https://github.com/google/cel-spec CEL expressions have access to the contents of the Admission request/response, organized into CEL variables as well as some other useful variables:  'object' - The object from the incoming request. The value is null for DELETE requests. 'oldObject' - The existing object. The value is null for CREATE requests. 'request' - Attributes of the admission request([ref](/pkg/apis/admission/types.go#AdmissionRequest)). 'params' - Parameter resource referred to by the policy binding being evaluated. Only populated if the policy has a ParamKind.  The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always accessible from the root of the object. No other metadata properties are accessible.  Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible. Accessible property names are escaped according to the following rules when accessed in the expression: - '__' escapes to '__underscores__' - '.' escapes to '__dot__' - '-' escapes to '__dash__' - '/' escapes to '__slash__' - Property names that exactly match a CEL RESERVED keyword escape to '__{keyword}__'. The keywords are:    \"true\", \"false\", \"null\", \"in\", \"as\", \"break\", \"const\", \"continue\", \"else\", \"for\", \"function\", \"if\",    \"import\", \"let\", \"loop\", \"package\", \"namespace\", \"return\". Examples:   - Expression accessing a property named \"namespace\": {\"Expression\": \"object.__namespace__ > 0\"}   - Expression accessing a property named \"x-prop\": {\"Expression\": \"object.x__dash__prop > 0\"}   - Expression accessing a property named \"redact__d\": {\"Expression\": \"object.redact__underscores__d > 0\"}  Equality on arrays with list type of 'set' or 'map' ignores element order, i.e. [1, 2] == [2, 1]. Concatenation on arrays with x-kubernetes-list-type use the semantics of the list type:   - 'set': `X + Y` performs a union where the array positions of all elements in `X` are preserved and     non-intersecting elements in `Y` are appended, retaining their partial order.   - 'map': `X + Y` performs a merge where the array positions of all keys in `X` are preserved but the values     are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in `Y` with     non-intersecting keys are appended, retaining their partial order. Required.
  @BuiltValueField(wireName: r'expression')
  String get expression;

  /// Message represents the message displayed when validation fails. The message is required if the Expression contains line breaks. The message must not contain line breaks. If unset, the message is \"failed rule: {Rule}\". e.g. \"must be a URL with the host matching spec.host\" If the Expression contains line breaks. Message is required. The message must not contain line breaks. If unset, the message is \"failed Expression: {Expression}\".
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// Reason represents a machine-readable description of why this validation failed. If this is the first validation in the list to fail, this reason, as well as the corresponding HTTP response code, are used in the HTTP response to the client. The currently supported reasons are: \"Unauthorized\", \"Forbidden\", \"Invalid\", \"RequestEntityTooLarge\". If not set, StatusReasonInvalid is used in the response to the client.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IoK8sApiAdmissionregistrationV1alpha1Validation._();

  factory IoK8sApiAdmissionregistrationV1alpha1Validation([void updates(IoK8sApiAdmissionregistrationV1alpha1ValidationBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1Validation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ValidationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1Validation> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ValidationSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ValidationSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1Validation> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1Validation, _$IoK8sApiAdmissionregistrationV1alpha1Validation];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1Validation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1Validation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'expression';
    yield serializers.serialize(
      object.expression,
      specifiedType: const FullType(String),
    );
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1Validation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ValidationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'expression':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expression = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1alpha1Validation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ValidationBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

