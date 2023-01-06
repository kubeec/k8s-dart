//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_networking_v1_service_backend_port.g.dart';

/// ServiceBackendPort is the service port being referenced.
///
/// Properties:
/// * [name] - Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".
/// * [number] - Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".
@BuiltValue()
abstract class IoK8sApiNetworkingV1ServiceBackendPort implements Built<IoK8sApiNetworkingV1ServiceBackendPort, IoK8sApiNetworkingV1ServiceBackendPortBuilder> {
  /// Name is the name of the port on the Service. This is a mutually exclusive setting with \"Number\".
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with \"Name\".
  @BuiltValueField(wireName: r'number')
  int? get number;

  IoK8sApiNetworkingV1ServiceBackendPort._();

  factory IoK8sApiNetworkingV1ServiceBackendPort([void updates(IoK8sApiNetworkingV1ServiceBackendPortBuilder b)]) = _$IoK8sApiNetworkingV1ServiceBackendPort;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiNetworkingV1ServiceBackendPortBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiNetworkingV1ServiceBackendPort> get serializer => _$IoK8sApiNetworkingV1ServiceBackendPortSerializer();
}

class _$IoK8sApiNetworkingV1ServiceBackendPortSerializer implements PrimitiveSerializer<IoK8sApiNetworkingV1ServiceBackendPort> {
  @override
  final Iterable<Type> types = const [IoK8sApiNetworkingV1ServiceBackendPort, _$IoK8sApiNetworkingV1ServiceBackendPort];

  @override
  final String wireName = r'IoK8sApiNetworkingV1ServiceBackendPort';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiNetworkingV1ServiceBackendPort object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.number != null) {
      yield r'number';
      yield serializers.serialize(
        object.number,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiNetworkingV1ServiceBackendPort object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiNetworkingV1ServiceBackendPortBuilder result,
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
        case r'number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.number = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiNetworkingV1ServiceBackendPort deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiNetworkingV1ServiceBackendPortBuilder();
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

