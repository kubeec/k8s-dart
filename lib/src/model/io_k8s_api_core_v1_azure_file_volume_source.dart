//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_azure_file_volume_source.g.dart';

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
///
/// Properties:
/// * [readOnly] - readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [secretName] - secretName is the  name of secret that contains Azure Storage Account Name and Key
/// * [shareName] - shareName is the azure share Name
@BuiltValue()
abstract class IoK8sApiCoreV1AzureFileVolumeSource implements Built<IoK8sApiCoreV1AzureFileVolumeSource, IoK8sApiCoreV1AzureFileVolumeSourceBuilder> {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// secretName is the  name of secret that contains Azure Storage Account Name and Key
  @BuiltValueField(wireName: r'secretName')
  String get secretName;

  /// shareName is the azure share Name
  @BuiltValueField(wireName: r'shareName')
  String get shareName;

  IoK8sApiCoreV1AzureFileVolumeSource._();

  factory IoK8sApiCoreV1AzureFileVolumeSource([void updates(IoK8sApiCoreV1AzureFileVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1AzureFileVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1AzureFileVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1AzureFileVolumeSource> get serializer => _$IoK8sApiCoreV1AzureFileVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1AzureFileVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1AzureFileVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1AzureFileVolumeSource, _$IoK8sApiCoreV1AzureFileVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1AzureFileVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1AzureFileVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    yield r'secretName';
    yield serializers.serialize(
      object.secretName,
      specifiedType: const FullType(String),
    );
    yield r'shareName';
    yield serializers.serialize(
      object.shareName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1AzureFileVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1AzureFileVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'secretName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretName = valueDes;
          break;
        case r'shareName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.shareName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1AzureFileVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1AzureFileVolumeSourceBuilder();
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

