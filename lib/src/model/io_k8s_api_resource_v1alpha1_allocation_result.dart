//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_resource_v1alpha1_allocation_result.g.dart';

/// AllocationResult contains attributed of an allocated resource.
///
/// Properties:
/// * [availableOnNodes] 
/// * [resourceHandle] - ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.  The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
/// * [shareable] - Shareable determines whether the resource supports more than one consumer at a time.
@BuiltValue()
abstract class IoK8sApiResourceV1alpha1AllocationResult implements Built<IoK8sApiResourceV1alpha1AllocationResult, IoK8sApiResourceV1alpha1AllocationResultBuilder> {
  @BuiltValueField(wireName: r'availableOnNodes')
  IoK8sApiCoreV1NodeSelector? get availableOnNodes;

  /// ResourceHandle contains arbitrary data returned by the driver after a successful allocation. This is opaque for Kubernetes. Driver documentation may explain to users how to interpret this data if needed.  The maximum size of this field is 16KiB. This may get increased in the future, but not reduced.
  @BuiltValueField(wireName: r'resourceHandle')
  String? get resourceHandle;

  /// Shareable determines whether the resource supports more than one consumer at a time.
  @BuiltValueField(wireName: r'shareable')
  bool? get shareable;

  IoK8sApiResourceV1alpha1AllocationResult._();

  factory IoK8sApiResourceV1alpha1AllocationResult([void updates(IoK8sApiResourceV1alpha1AllocationResultBuilder b)]) = _$IoK8sApiResourceV1alpha1AllocationResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiResourceV1alpha1AllocationResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiResourceV1alpha1AllocationResult> get serializer => _$IoK8sApiResourceV1alpha1AllocationResultSerializer();
}

class _$IoK8sApiResourceV1alpha1AllocationResultSerializer implements PrimitiveSerializer<IoK8sApiResourceV1alpha1AllocationResult> {
  @override
  final Iterable<Type> types = const [IoK8sApiResourceV1alpha1AllocationResult, _$IoK8sApiResourceV1alpha1AllocationResult];

  @override
  final String wireName = r'IoK8sApiResourceV1alpha1AllocationResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiResourceV1alpha1AllocationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.availableOnNodes != null) {
      yield r'availableOnNodes';
      yield serializers.serialize(
        object.availableOnNodes,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
      );
    }
    if (object.resourceHandle != null) {
      yield r'resourceHandle';
      yield serializers.serialize(
        object.resourceHandle,
        specifiedType: const FullType(String),
      );
    }
    if (object.shareable != null) {
      yield r'shareable';
      yield serializers.serialize(
        object.shareable,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiResourceV1alpha1AllocationResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiResourceV1alpha1AllocationResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'availableOnNodes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
          ) as IoK8sApiCoreV1NodeSelector;
          result.availableOnNodes.replace(valueDes);
          break;
        case r'resourceHandle':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceHandle = valueDes;
          break;
        case r'shareable':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.shareable = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiResourceV1alpha1AllocationResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiResourceV1alpha1AllocationResultBuilder();
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

