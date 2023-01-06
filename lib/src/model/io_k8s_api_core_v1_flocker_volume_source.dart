//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_flocker_volume_source.g.dart';

/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
///
/// Properties:
/// * [datasetName] - datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
/// * [datasetUUID] - datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
@BuiltValue()
abstract class IoK8sApiCoreV1FlockerVolumeSource implements Built<IoK8sApiCoreV1FlockerVolumeSource, IoK8sApiCoreV1FlockerVolumeSourceBuilder> {
  /// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  @BuiltValueField(wireName: r'datasetName')
  String? get datasetName;

  /// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  @BuiltValueField(wireName: r'datasetUUID')
  String? get datasetUUID;

  IoK8sApiCoreV1FlockerVolumeSource._();

  factory IoK8sApiCoreV1FlockerVolumeSource([void updates(IoK8sApiCoreV1FlockerVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1FlockerVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1FlockerVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1FlockerVolumeSource> get serializer => _$IoK8sApiCoreV1FlockerVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1FlockerVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1FlockerVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1FlockerVolumeSource, _$IoK8sApiCoreV1FlockerVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1FlockerVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1FlockerVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.datasetName != null) {
      yield r'datasetName';
      yield serializers.serialize(
        object.datasetName,
        specifiedType: const FullType(String),
      );
    }
    if (object.datasetUUID != null) {
      yield r'datasetUUID';
      yield serializers.serialize(
        object.datasetUUID,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1FlockerVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1FlockerVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'datasetName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetName = valueDes;
          break;
        case r'datasetUUID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.datasetUUID = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1FlockerVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1FlockerVolumeSourceBuilder();
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

