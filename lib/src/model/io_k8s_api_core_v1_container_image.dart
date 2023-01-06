//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_container_image.g.dart';

/// Describe a container image
///
/// Properties:
/// * [names] - Names by which this image is known. e.g. [\"kubernetes.example/hyperkube:v1.0.7\", \"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7\"]
/// * [sizeBytes] - The size of the image in bytes.
@BuiltValue()
abstract class IoK8sApiCoreV1ContainerImage implements Built<IoK8sApiCoreV1ContainerImage, IoK8sApiCoreV1ContainerImageBuilder> {
  /// Names by which this image is known. e.g. [\"kubernetes.example/hyperkube:v1.0.7\", \"cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7\"]
  @BuiltValueField(wireName: r'names')
  BuiltList<String>? get names;

  /// The size of the image in bytes.
  @BuiltValueField(wireName: r'sizeBytes')
  int? get sizeBytes;

  IoK8sApiCoreV1ContainerImage._();

  factory IoK8sApiCoreV1ContainerImage([void updates(IoK8sApiCoreV1ContainerImageBuilder b)]) = _$IoK8sApiCoreV1ContainerImage;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ContainerImageBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ContainerImage> get serializer => _$IoK8sApiCoreV1ContainerImageSerializer();
}

class _$IoK8sApiCoreV1ContainerImageSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ContainerImage> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ContainerImage, _$IoK8sApiCoreV1ContainerImage];

  @override
  final String wireName = r'IoK8sApiCoreV1ContainerImage';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ContainerImage object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.names != null) {
      yield r'names';
      yield serializers.serialize(
        object.names,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.sizeBytes != null) {
      yield r'sizeBytes';
      yield serializers.serialize(
        object.sizeBytes,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ContainerImage object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ContainerImageBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'names':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.names.replace(valueDes);
          break;
        case r'sizeBytes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.sizeBytes = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ContainerImage deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ContainerImageBuilder();
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

