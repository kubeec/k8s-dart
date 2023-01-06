//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_node_selector.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_volume_node_affinity.g.dart';

/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
///
/// Properties:
/// * [required_] 
@BuiltValue()
abstract class IoK8sApiCoreV1VolumeNodeAffinity implements Built<IoK8sApiCoreV1VolumeNodeAffinity, IoK8sApiCoreV1VolumeNodeAffinityBuilder> {
  @BuiltValueField(wireName: r'required')
  IoK8sApiCoreV1NodeSelector? get required_;

  IoK8sApiCoreV1VolumeNodeAffinity._();

  factory IoK8sApiCoreV1VolumeNodeAffinity([void updates(IoK8sApiCoreV1VolumeNodeAffinityBuilder b)]) = _$IoK8sApiCoreV1VolumeNodeAffinity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1VolumeNodeAffinityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1VolumeNodeAffinity> get serializer => _$IoK8sApiCoreV1VolumeNodeAffinitySerializer();
}

class _$IoK8sApiCoreV1VolumeNodeAffinitySerializer implements PrimitiveSerializer<IoK8sApiCoreV1VolumeNodeAffinity> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1VolumeNodeAffinity, _$IoK8sApiCoreV1VolumeNodeAffinity];

  @override
  final String wireName = r'IoK8sApiCoreV1VolumeNodeAffinity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1VolumeNodeAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.required_ != null) {
      yield r'required';
      yield serializers.serialize(
        object.required_,
        specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1VolumeNodeAffinity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1VolumeNodeAffinityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'required':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1NodeSelector),
          ) as IoK8sApiCoreV1NodeSelector;
          result.required_.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1VolumeNodeAffinity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1VolumeNodeAffinityBuilder();
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

