//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_flowcontrol_v1beta2_queuing_configuration.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta2_limit_response.g.dart';

/// LimitResponse defines how to handle requests that can not be executed right now.
///
/// Properties:
/// * [queuing] 
/// * [type] - `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta2LimitResponse implements Built<IoK8sApiFlowcontrolV1beta2LimitResponse, IoK8sApiFlowcontrolV1beta2LimitResponseBuilder> {
  @BuiltValueField(wireName: r'queuing')
  IoK8sApiFlowcontrolV1beta2QueuingConfiguration? get queuing;

  /// `type` is \"Queue\" or \"Reject\". \"Queue\" means that requests that can not be executed upon arrival are held in a queue until they can be executed or a queuing limit is reached. \"Reject\" means that requests that can not be executed upon arrival are rejected. Required.
  @BuiltValueField(wireName: r'type')
  String get type;

  IoK8sApiFlowcontrolV1beta2LimitResponse._();

  factory IoK8sApiFlowcontrolV1beta2LimitResponse([void updates(IoK8sApiFlowcontrolV1beta2LimitResponseBuilder b)]) = _$IoK8sApiFlowcontrolV1beta2LimitResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta2LimitResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta2LimitResponse> get serializer => _$IoK8sApiFlowcontrolV1beta2LimitResponseSerializer();
}

class _$IoK8sApiFlowcontrolV1beta2LimitResponseSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta2LimitResponse> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta2LimitResponse, _$IoK8sApiFlowcontrolV1beta2LimitResponse];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta2LimitResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2LimitResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.queuing != null) {
      yield r'queuing';
      yield serializers.serialize(
        object.queuing,
        specifiedType: const FullType(IoK8sApiFlowcontrolV1beta2QueuingConfiguration),
      );
    }
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta2LimitResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta2LimitResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'queuing':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiFlowcontrolV1beta2QueuingConfiguration),
          ) as IoK8sApiFlowcontrolV1beta2QueuingConfiguration;
          result.queuing.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta2LimitResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta2LimitResponseBuilder();
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

