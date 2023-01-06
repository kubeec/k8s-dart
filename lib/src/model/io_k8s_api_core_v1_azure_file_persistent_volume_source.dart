//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_azure_file_persistent_volume_source.g.dart';

/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
///
/// Properties:
/// * [readOnly] - readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
/// * [secretName] - secretName is the name of secret that contains Azure Storage Account Name and Key
/// * [secretNamespace] - secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
/// * [shareName] - shareName is the azure Share Name
@BuiltValue()
abstract class IoK8sApiCoreV1AzureFilePersistentVolumeSource implements Built<IoK8sApiCoreV1AzureFilePersistentVolumeSource, IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder> {
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  /// secretName is the name of secret that contains Azure Storage Account Name and Key
  @BuiltValueField(wireName: r'secretName')
  String get secretName;

  /// secretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  @BuiltValueField(wireName: r'secretNamespace')
  String? get secretNamespace;

  /// shareName is the azure Share Name
  @BuiltValueField(wireName: r'shareName')
  String get shareName;

  IoK8sApiCoreV1AzureFilePersistentVolumeSource._();

  factory IoK8sApiCoreV1AzureFilePersistentVolumeSource([void updates(IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1AzureFilePersistentVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1AzureFilePersistentVolumeSource> get serializer => _$IoK8sApiCoreV1AzureFilePersistentVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1AzureFilePersistentVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1AzureFilePersistentVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1AzureFilePersistentVolumeSource, _$IoK8sApiCoreV1AzureFilePersistentVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1AzureFilePersistentVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1AzureFilePersistentVolumeSource object, {
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
    if (object.secretNamespace != null) {
      yield r'secretNamespace';
      yield serializers.serialize(
        object.secretNamespace,
        specifiedType: const FullType(String),
      );
    }
    yield r'shareName';
    yield serializers.serialize(
      object.shareName,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1AzureFilePersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder result,
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
        case r'secretNamespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secretNamespace = valueDes;
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
  IoK8sApiCoreV1AzureFilePersistentVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1AzureFilePersistentVolumeSourceBuilder();
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

