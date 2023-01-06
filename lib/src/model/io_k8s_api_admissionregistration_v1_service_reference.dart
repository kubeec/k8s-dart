//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_admissionregistration_v1_service_reference.g.dart';

/// ServiceReference holds a reference to Service.legacy.k8s.io
///
/// Properties:
/// * [name] - `name` is the name of the service. Required
/// * [namespace] - `namespace` is the namespace of the service. Required
/// * [path] - `path` is an optional URL path which will be sent in any request to this service.
/// * [port] - If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
@BuiltValue()
abstract class IoK8sApiAdmissionregistrationV1ServiceReference implements Built<IoK8sApiAdmissionregistrationV1ServiceReference, IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder> {
  /// `name` is the name of the service. Required
  @BuiltValueField(wireName: r'name')
  String get name;

  /// `namespace` is the namespace of the service. Required
  @BuiltValueField(wireName: r'namespace')
  String get namespace;

  /// `path` is an optional URL path which will be sent in any request to this service.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// If specified, the port on the service that hosting webhook. Default to 443 for backward compatibility. `port` should be a valid port number (1-65535, inclusive).
  @BuiltValueField(wireName: r'port')
  int? get port;

  IoK8sApiAdmissionregistrationV1ServiceReference._();

  factory IoK8sApiAdmissionregistrationV1ServiceReference([void updates(IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder b)]) = _$IoK8sApiAdmissionregistrationV1ServiceReference;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiAdmissionregistrationV1ServiceReference> get serializer => _$IoK8sApiAdmissionregistrationV1ServiceReferenceSerializer();
}

class _$IoK8sApiAdmissionregistrationV1ServiceReferenceSerializer implements PrimitiveSerializer<IoK8sApiAdmissionregistrationV1ServiceReference> {
  @override
  final Iterable<Type> types = const [IoK8sApiAdmissionregistrationV1ServiceReference, _$IoK8sApiAdmissionregistrationV1ServiceReference];

  @override
  final String wireName = r'IoK8sApiAdmissionregistrationV1ServiceReference';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1ServiceReference object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'namespace';
    yield serializers.serialize(
      object.namespace,
      specifiedType: const FullType(String),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    if (object.port != null) {
      yield r'port';
      yield serializers.serialize(
        object.port,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiAdmissionregistrationV1ServiceReference object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'namespace':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.namespace = valueDes;
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiAdmissionregistrationV1ServiceReference deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiAdmissionregistrationV1ServiceReferenceBuilder();
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

