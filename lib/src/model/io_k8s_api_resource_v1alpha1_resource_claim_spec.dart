//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_resource_v1alpha1_resource_claim_parameters_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_resource_claim_spec.g.dart';

/// ResourceClaimSpec defines how a resource is to be allocated.
///
/// Properties:
/// * [allocationMode] - Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default.
/// * [parametersRef] 
/// * [resourceClassName] - ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1ResourceClaimSpec implements Built<IoK8sApiResourceV1alpha1ResourceClaimSpec, IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder> {
  /// Allocation can start immediately or when a Pod wants to use the resource. \"WaitForFirstConsumer\" is the default.
  @BuiltValueField(wireName: r'allocationMode')
  String? get allocationMode;

  @BuiltValueField(wireName: r'parametersRef')
  IoK8sApiResourceV1alpha1ResourceClaimParametersReference? get parametersRef;

  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  @BuiltValueField(wireName: r'resourceClassName')
  String get resourceClassName;

  IoK8sApiResourceV1alpha1ResourceClaimSpec._();

  factory IoK8sApiResourceV1alpha1ResourceClaimSpec([void updates(IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder b)]) = _$IoK8sApiResourceV1alpha1ResourceClaimSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1ResourceClaimSpec> get serializer => _$IoK8sApiResourceV1alpha1ResourceClaimSpecSerializer();
}

class _$IoK8sApiResourceV1alpha1ResourceClaimSpecSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1ResourceClaimSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1ResourceClaimSpec, _$IoK8sApiResourceV1alpha1ResourceClaimSpec];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1ResourceClaimSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.allocationMode != null) {
      yield r'allocationMode';
      yield serializers.serialize(
        object.allocationMode,
        specifiedType: const FullType(String),
      );
    }
    if (object.parametersRef != null) {
      yield r'parametersRef';
      yield serializers.serialize(
        object.parametersRef,
        specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClaimParametersReference),
      );
    }
    yield r'resourceClassName';
    yield serializers.serialize(
      object.resourceClassName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1ResourceClaimSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'allocationMode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.allocationMode = valueDes;
          break;
        case r'parametersRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiResourceV1alpha1ResourceClaimParametersReference),
          ) as IoK8sApiResourceV1alpha1ResourceClaimParametersReference;
          result.parametersRef.replace(valueDes);
          break;
        case r'resourceClassName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceClassName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1ResourceClaimSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1ResourceClaimSpecBuilder();
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

