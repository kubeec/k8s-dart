//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_grpc_action.g.dart';

/// IoK8sApiCoreV1GRPCAction
///
/// Properties:
/// * [port] - Port number of the gRPC service. Number must be in the range 1 to 65535.
/// * [service] - Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).  If this is not specified, the default behavior is defined by gRPC.
@BuiltValue()
abstract class IoK8sApiCoreV1GRPCAction implements Built<IoK8sApiCoreV1GRPCAction, IoK8sApiCoreV1GRPCActionBuilder> {
  /// Port number of the gRPC service. Number must be in the range 1 to 65535.
  @BuiltValueField(wireName: r'port')
  int get port;

  /// Service is the name of the service to place in the gRPC HealthCheckRequest (see https://github.com/grpc/grpc/blob/master/doc/health-checking.md).  If this is not specified, the default behavior is defined by gRPC.
  @BuiltValueField(wireName: r'service')
  String? get service;

  IoK8sApiCoreV1GRPCAction._();

  factory IoK8sApiCoreV1GRPCAction([void updates(IoK8sApiCoreV1GRPCActionBuilder b)]) = _$IoK8sApiCoreV1GRPCAction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1GRPCActionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1GRPCAction> get serializer => _$IoK8sApiCoreV1GRPCActionSerializer();
}

class _$IoK8sApiCoreV1GRPCActionSerializer implements PrimitiveSerializer<IoK8sApiCoreV1GRPCAction> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1GRPCAction, _$IoK8sApiCoreV1GRPCAction];

  @override
  final String wireName = r'IoK8sApiCoreV1GRPCAction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1GRPCAction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'port';
    yield serializers.serialize(
      object.port,
      specifiedType: const FullType(int),
    );
    if (object.service != null) {
      yield r'service';
      yield serializers.serialize(
        object.service,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1GRPCAction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1GRPCActionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'port':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.port = valueDes;
          break;
        case r'service':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.service = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1GRPCAction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1GRPCActionBuilder();
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

