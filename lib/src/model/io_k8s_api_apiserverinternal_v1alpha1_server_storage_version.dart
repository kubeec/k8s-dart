//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_apiserverinternal_v1alpha1_server_storage_version.g.dart';

/// An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
///
/// Properties:
/// * [apiServerID] - The ID of the reporting API server.
/// * [decodableVersions] - The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
/// * [encodingVersion] - The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
@BuiltValue()
abstract class IoK8sApiApiserverinternalV1alpha1ServerStorageVersion implements Built<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion, IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder> {
  /// The ID of the reporting API server.
  @BuiltValueField(wireName: r'apiServerID')
  String? get apiServerID;

  /// The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
  @BuiltValueField(wireName: r'decodableVersions')
  BuiltList<String>? get decodableVersions;

  /// The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
  @BuiltValueField(wireName: r'encodingVersion')
  String? get encodingVersion;

  IoK8sApiApiserverinternalV1alpha1ServerStorageVersion._();

  factory IoK8sApiApiserverinternalV1alpha1ServerStorageVersion([void updates(IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder b)]) = _$IoK8sApiApiserverinternalV1alpha1ServerStorageVersion;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion> get serializer => _$IoK8sApiApiserverinternalV1alpha1ServerStorageVersionSerializer();
}

class _$IoK8sApiApiserverinternalV1alpha1ServerStorageVersionSerializer implements PrimitiveSerializer<IoK8sApiApiserverinternalV1alpha1ServerStorageVersion> {
  @override
  final Iterable<Type> types = const [IoK8sApiApiserverinternalV1alpha1ServerStorageVersion, _$IoK8sApiApiserverinternalV1alpha1ServerStorageVersion];

  @override
  final String wireName = r'IoK8sApiApiserverinternalV1alpha1ServerStorageVersion';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1ServerStorageVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.apiServerID != null) {
      yield r'apiServerID';
      yield serializers.serialize(
        object.apiServerID,
        specifiedType: const FullType(String),
      );
    }
    if (object.decodableVersions != null) {
      yield r'decodableVersions';
      yield serializers.serialize(
        object.decodableVersions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.encodingVersion != null) {
      yield r'encodingVersion';
      yield serializers.serialize(
        object.encodingVersion,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiApiserverinternalV1alpha1ServerStorageVersion object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'apiServerID':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiServerID = valueDes;
          break;
        case r'decodableVersions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.decodableVersions.replace(valueDes);
          break;
        case r'encodingVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.encodingVersion = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiApiserverinternalV1alpha1ServerStorageVersion deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiApiserverinternalV1alpha1ServerStorageVersionBuilder();
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

