//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_param_ref.dart';
import 'package:k8s/src/model/io_k8s_api_admissionregistration_v1alpha1_match_resources.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1alpha1_validating_admission_policy_binding_spec.g.dart';

/// ValidatingAdmissionPolicyBindingSpec is the specification of the ValidatingAdmissionPolicyBinding.
///
/// Properties:
/// * [matchResources] 
/// * [paramRef] 
/// * [policyName] - PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec implements Built<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec, IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder> {
  @BuiltValueField(wireName: r'matchResources')
  IoK8sApiAdmissionregistrationV1alpha1MatchResources? get matchResources;

  @BuiltValueField(wireName: r'paramRef')
  IoK8sApiAdmissionregistrationV1alpha1ParamRef? get paramRef;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist, this binding is considered invalid and will be ignored Required.
  @BuiltValueField(wireName: r'policyName')
  String? get policyName;

  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec._();

  factory IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec([void updates(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder b)]) = _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec> get serializer => _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecSerializer();
}

class _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec, _$IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.matchResources != null) {
      yield r'matchResources';
      yield serializers.serialize(
        object.matchResources,
        specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1MatchResources),
      );
    }
    if (object.paramRef != null) {
      yield r'paramRef';
      yield serializers.serialize(
        object.paramRef,
        specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1ParamRef),
      );
    }
    if (object.policyName != null) {
      yield r'policyName';
      yield serializers.serialize(
        object.policyName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'matchResources':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1MatchResources),
          ) as IoK8sApiAdmissionregistrationV1alpha1MatchResources;
          result.matchResources.replace(valueDes);
          break;
        case r'paramRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiAdmissionregistrationV1alpha1ParamRef),
          ) as IoK8sApiAdmissionregistrationV1alpha1ParamRef;
          result.paramRef.replace(valueDes);
          break;
        case r'policyName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1alpha1ValidatingAdmissionPolicyBindingSpecBuilder();
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

