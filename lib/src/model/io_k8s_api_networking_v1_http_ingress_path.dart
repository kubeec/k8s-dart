//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_networking_v1_ingress_backend.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_http_ingress_path.g.dart';

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the path are forwarded to the backend.
///
/// Properties:
/// * [backend] 
/// * [path] - Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value \"Exact\" or \"Prefix\".
/// * [pathType] - PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is   done on a path element by element basis. A path element refers is the   list of labels in the path split by the '/' separator. A request is a   match for path p if every p is an element-wise prefix of p of the   request path. Note that if the last element of the path is a substring   of the last element in request path, it is not a match (e.g. /foo/bar   matches /foo/bar/baz, but does not match /foo/barbaz). * ImplementationSpecific: Interpretation of the Path matching is up to   the IngressClass. Implementations can treat this as a separate PathType   or treat it identically to Prefix or Exact path types. Implementations are required to support all path types.
@BuiltValue()
abstract class IoK8sApiNetworkingV1HTTPIngressPath implements Built<IoK8sApiNetworkingV1HTTPIngressPath, IoK8sApiNetworkingV1HTTPIngressPathBuilder> {
  @BuiltValueField(wireName: r'backend')
  IoK8sApiNetworkingV1IngressBackend get backend;

  /// Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value \"Exact\" or \"Prefix\".
  @BuiltValueField(wireName: r'path')
  String? get path;

  /// PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is   done on a path element by element basis. A path element refers is the   list of labels in the path split by the '/' separator. A request is a   match for path p if every p is an element-wise prefix of p of the   request path. Note that if the last element of the path is a substring   of the last element in request path, it is not a match (e.g. /foo/bar   matches /foo/bar/baz, but does not match /foo/barbaz). * ImplementationSpecific: Interpretation of the Path matching is up to   the IngressClass. Implementations can treat this as a separate PathType   or treat it identically to Prefix or Exact path types. Implementations are required to support all path types.
  @BuiltValueField(wireName: r'pathType')
  String get pathType;

  IoK8sApiNetworkingV1HTTPIngressPath._();

  factory IoK8sApiNetworkingV1HTTPIngressPath([void updates(IoK8sApiNetworkingV1HTTPIngressPathBuilder b)]) = _$IoK8sApiNetworkingV1HTTPIngressPath;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1HTTPIngressPathBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1HTTPIngressPath> get serializer => _$IoK8sApiNetworkingV1HTTPIngressPathSerializer();
}

class _$IoK8sApiNetworkingV1HTTPIngressPathSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1HTTPIngressPath> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1HTTPIngressPath, _$IoK8sApiNetworkingV1HTTPIngressPath];

  @override
  final String wireName = r'IoK8sApiNetworkingV1HTTPIngressPath';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1HTTPIngressPath object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'backend';
    yield serializers.serialize(
      object.backend,
      specifiedType: const FullType(IoK8sApiNetworkingV1IngressBackend),
    );
    if (object.path != null) {
      yield r'path';
      yield serializers.serialize(
        object.path,
        specifiedType: const FullType(String),
      );
    }
    yield r'pathType';
    yield serializers.serialize(
      object.pathType,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1HTTPIngressPath object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1HTTPIngressPathBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'backend':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiNetworkingV1IngressBackend),
          ) as IoK8sApiNetworkingV1IngressBackend;
          result.backend.replace(valueDes);
          break;
        case r'path':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.path = valueDes;
          break;
        case r'pathType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.pathType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1HTTPIngressPath deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1HTTPIngressPathBuilder();
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

