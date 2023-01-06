//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_http_header.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_http_get_action.g.dart';

/// HTTPGetAction describes an action based on HTTP Get requests.
///
/// Properties:
/// * [host] - Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
/// * [httpHeaders] - Custom headers to set in the request. HTTP allows repeated headers.
/// * [path] - Path to access on the HTTP server.
/// * [port] - IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
/// * [scheme] - Scheme to use for connecting to the host. Defaults to HTTP.  
@BuiltValue()
abstract class IoK8sApiCoreV1HTTPGetAction implements Built<IoK8sApiCoreV1HTTPGetAction, IoK8sApiCoreV1HTTPGetActionBuilder> {
  /// Host name to connect to, defaults to the pod IP. You probably want to set \"Host\" in httpHeaders instead.
  @BuiltValueField(wireName: r'host')
  String? get host;

  /// Custom headers to set in the request. HTTP allows repeated headers.
  @BuiltValueField(wireName: r'httpHeaders')
  BuiltList<IoK8sApiCoreV1HTTPHeader>? get httpHeaders;

  /// Path to access on the HTTP server.
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// IntOrString is a type that can hold an int32 or a string.  When used in JSON or YAML marshalling and unmarshalling, it produces or consumes the inner type.  This allows you to have, for example, a JSON field that can accept a name or number.
  @BuiltValueField(wireName: r'port')
  String get port;

  /// Scheme to use for connecting to the host. Defaults to HTTP.  
  @BuiltValueField(wireName: r'scheme')
  String? get scheme;

  IoK8sApiCoreV1HTTPGetAction._();

  factory IoK8sApiCoreV1HTTPGetAction([void updates(IoK8sApiCoreV1HTTPGetActionBuilder b)]) = _$IoK8sApiCoreV1HTTPGetAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1HTTPGetActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1HTTPGetAction> get serializer => _$IoK8sApiCoreV1HTTPGetActionSerializer();
}

class _$IoK8sApiCoreV1HTTPGetActionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1HTTPGetAction> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1HTTPGetAction, _$IoK8sApiCoreV1HTTPGetAction];

  @override
  final String wireName = r'IoK8sApiCoreV1HTTPGetAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1HTTPGetAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.host != null) {
      yield r'host';
      yield serializers.serialize(
        object.host,
        specifiedType: const FullType(String),
      );
    }
    if (object.httpHeaders != null) {
      yield r'httpHeaders';
      yield serializers.serialize(
        object.httpHeaders,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1HTTPHeader)]),
      );
    }
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(String),
    );
    if (object.scheme != null) {
      yield r'scheme';
      yield serializers.serialize(
        object.scheme,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1HTTPGetAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1HTTPGetActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'host':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.host = valueDes;
          break;
        case r'httpHeaders':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApiCoreV1HTTPHeader)]),
          ) as BuiltList<IoK8sApiCoreV1HTTPHeader>;
          result.httpHeaders.replace(valueDes);
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
            specifiedType: const FullType(String),
          ) as String;
          result.port = valueDes;
          break;
        case r'scheme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.scheme = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1HTTPGetAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1HTTPGetActionBuilder();
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

