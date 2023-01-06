//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_volume_node_resources.g.dart';

/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
///
/// Properties:
/// * [count] - Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
@BuiltValue()
abstract class IoK8sApiStorageV1VolumeNodeResources implements Built<IoK8sApiStorageV1VolumeNodeResources, IoK8sApiStorageV1VolumeNodeResourcesBuilder> {
  /// Maximum number of unique volumes managed by the CSI driver that can be used on a node. A volume that is both attached and mounted on a node is considered to be used once, not twice. The same rule applies for a unique volume that is shared among multiple pods on the same node. If this field is not specified, then the supported number of volumes on this node is unbounded.
  @BuiltValueField(wireName: r'count')
  int? get count;

  IoK8sApiStorageV1VolumeNodeResources._();

  factory IoK8sApiStorageV1VolumeNodeResources([void updates(IoK8sApiStorageV1VolumeNodeResourcesBuilder b)]) = _$IoK8sApiStorageV1VolumeNodeResources;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1VolumeNodeResourcesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1VolumeNodeResources> get serializer => _$IoK8sApiStorageV1VolumeNodeResourcesSerializer();
}

class _$IoK8sApiStorageV1VolumeNodeResourcesSerializer implements PrimitiveSerializer<IoK8sApiStorageV1VolumeNodeResources> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1VolumeNodeResources, _$IoK8sApiStorageV1VolumeNodeResources];

  @override
  final String wireName = r'IoK8sApiStorageV1VolumeNodeResources';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1VolumeNodeResources object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1VolumeNodeResources object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1VolumeNodeResourcesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1VolumeNodeResources deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1VolumeNodeResourcesBuilder();
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

