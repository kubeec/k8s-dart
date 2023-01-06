//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_storage_v1_csi_node_driver.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_storage_v1_csi_node_spec.g.dart';

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
///
/// Properties:
/// * [drivers] - drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
@BuiltValue()
abstract class IoK8sApiStorageV1CSINodeSpec implements Built<IoK8sApiStorageV1CSINodeSpec, IoK8sApiStorageV1CSINodeSpecBuilder> {
  /// drivers is a list of information of all CSI Drivers existing on a node. If all drivers in the list are uninstalled, this can become empty.
  @BuiltValueField(wireName: r'drivers')
  BuiltList<IoK8sApiStorageV1CSINodeDriver> get drivers;

  IoK8sApiStorageV1CSINodeSpec._();

  factory IoK8sApiStorageV1CSINodeSpec([void updates(IoK8sApiStorageV1CSINodeSpecBuilder b)]) = _$IoK8sApiStorageV1CSINodeSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiStorageV1CSINodeSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiStorageV1CSINodeSpec> get serializer => _$IoK8sApiStorageV1CSINodeSpecSerializer();
}

class _$IoK8sApiStorageV1CSINodeSpecSerializer implements PrimitiveSerializer<IoK8sApiStorageV1CSINodeSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiStorageV1CSINodeSpec, _$IoK8sApiStorageV1CSINodeSpec];

  @override
  final String wireName = r'IoK8sApiStorageV1CSINodeSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiStorageV1CSINodeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'drivers';
    yield serializers.serialize(
      object.drivers,
      specifiedType: const FullType(BuiltList, [FullType(IoK8sApiStorageV1CSINodeDriver)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiStorageV1CSINodeSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiStorageV1CSINodeSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'drivers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiStorageV1CSINodeDriver)]),
          ) as BuiltList<IoK8sApiStorageV1CSINodeDriver>;
          result.drivers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiStorageV1CSINodeSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiStorageV1CSINodeSpecBuilder();
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

