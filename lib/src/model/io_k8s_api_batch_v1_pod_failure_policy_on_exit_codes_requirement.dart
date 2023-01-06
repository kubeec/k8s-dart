//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_batch_v1_pod_failure_policy_on_exit_codes_requirement.g.dart';

/// PodFailurePolicyOnExitCodesRequirement describes the requirement for handling a failed pod based on its container exit codes. In particular, it lookups the .state.terminated.exitCode for each app container and init container status, represented by the .status.containerStatuses and .status.initContainerStatuses fields in the Pod status, respectively. Containers completed with success (exit code 0) are excluded from the requirement check.
///
/// Properties:
/// * [containerName] - Restricts the check for exit codes to the container with the specified name. When null, the rule applies to all containers. When specified, it should match one the container or initContainer names in the pod template.
/// * [operator_] - Represents the relationship between the container exit code(s) and the specified values. Containers completed with success (exit code 0) are excluded from the requirement check. Possible values are: - In: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is in the set of specified values. - NotIn: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is not in the set of specified values. Additional values are considered to be added in the future. Clients should react to an unknown operator by assuming the requirement is not satisfied.  
/// * [values] - Specifies the set of values. Each returned container exit code (might be multiple in case of multiple containers) is checked against this set of values with respect to the operator. The list of values must be ordered and must not contain duplicates. Value '0' cannot be used for the In operator. At least one element is required. At most 255 elements are allowed.
@BuiltValue()
abstract class IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement implements Built<IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement, IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementBuilder> {
  /// Restricts the check for exit codes to the container with the specified name. When null, the rule applies to all containers. When specified, it should match one the container or initContainer names in the pod template.
  @BuiltValueField(wireName: r'containerName')
  String? get containerName;

  /// Represents the relationship between the container exit code(s) and the specified values. Containers completed with success (exit code 0) are excluded from the requirement check. Possible values are: - In: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is in the set of specified values. - NotIn: the requirement is satisfied if at least one container exit code   (might be multiple if there are multiple containers not restricted   by the 'containerName' field) is not in the set of specified values. Additional values are considered to be added in the future. Clients should react to an unknown operator by assuming the requirement is not satisfied.  
  @BuiltValueField(wireName: r'operator')
  String get operator_;

  /// Specifies the set of values. Each returned container exit code (might be multiple in case of multiple containers) is checked against this set of values with respect to the operator. The list of values must be ordered and must not contain duplicates. Value '0' cannot be used for the In operator. At least one element is required. At most 255 elements are allowed.
  @BuiltValueField(wireName: r'values')
  BuiltList<int> get values;

  IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement._();

  factory IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement([void updates(IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementBuilder b)]) = _$IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement> get serializer => _$IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementSerializer();
}

class _$IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementSerializer implements PrimitiveSerializer<IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement> {
  @override
  final Iterable<Type> types = const [IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement, _$IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement];

  @override
  final String wireName = r'IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.containerName != null) {
      yield r'containerName';
      yield serializers.serialize(
        object.containerName,
        specifiedType: const FullType(String),
      );
    }
    yield r'operator';
    yield serializers.serialize(
      object.operator_,
      specifiedType: const FullType(String),
    );
    yield r'values';
    yield serializers.serialize(
      object.values,
      specifiedType: const FullType(BuiltList, [FullType(int)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'containerName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.containerName = valueDes;
          break;
        case r'operator':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operator_ = valueDes;
          break;
        case r'values':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(int)]),
          ) as BuiltList<int>;
          result.values.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirement deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiBatchV1PodFailurePolicyOnExitCodesRequirementBuilder();
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

