//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_flowcontrol_v1beta3_queuing_configuration.g.dart';

/// QueuingConfiguration holds the configuration parameters for queuing
///
/// Properties:
/// * [handSize] - `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
/// * [queueLengthLimit] - `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
/// * [queues] - `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
@BuiltValue()
abstract class IoK8sApiFlowcontrolV1beta3QueuingConfiguration implements Built<IoK8sApiFlowcontrolV1beta3QueuingConfiguration, IoK8sApiFlowcontrolV1beta3QueuingConfigurationBuilder> {
  /// `handSize` is a small positive number that configures the shuffle sharding of requests into queues.  When enqueuing a request at this priority level the request's flow identifier (a string pair) is hashed and the hash value is used to shuffle the list of queues and deal a hand of the size specified here.  The request is put into one of the shortest queues in that hand. `handSize` must be no larger than `queues`, and should be significantly smaller (so that a few heavy flows do not saturate most of the queues).  See the user-facing documentation for more extensive guidance on setting this field.  This field has a default value of 8.
  @BuiltValueField(wireName: r'handSize')
  int? get handSize;

  /// `queueLengthLimit` is the maximum number of requests allowed to be waiting in a given queue of this priority level at a time; excess requests are rejected.  This value must be positive.  If not specified, it will be defaulted to 50.
  @BuiltValueField(wireName: r'queueLengthLimit')
  int? get queueLengthLimit;

  /// `queues` is the number of queues for this priority level. The queues exist independently at each apiserver. The value must be positive.  Setting it to 1 effectively precludes shufflesharding and thus makes the distinguisher method of associated flow schemas irrelevant.  This field has a default value of 64.
  @BuiltValueField(wireName: r'queues')
  int? get queues;

  IoK8sApiFlowcontrolV1beta3QueuingConfiguration._();

  factory IoK8sApiFlowcontrolV1beta3QueuingConfiguration([void updates(IoK8sApiFlowcontrolV1beta3QueuingConfigurationBuilder b)]) = _$IoK8sApiFlowcontrolV1beta3QueuingConfiguration;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiFlowcontrolV1beta3QueuingConfigurationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiFlowcontrolV1beta3QueuingConfiguration> get serializer => _$IoK8sApiFlowcontrolV1beta3QueuingConfigurationSerializer();
}

class _$IoK8sApiFlowcontrolV1beta3QueuingConfigurationSerializer implements PrimitiveSerializer<IoK8sApiFlowcontrolV1beta3QueuingConfiguration> {
  @override
  final Iterable<Type> types = const [IoK8sApiFlowcontrolV1beta3QueuingConfiguration, _$IoK8sApiFlowcontrolV1beta3QueuingConfiguration];

  @override
  final String wireName = r'IoK8sApiFlowcontrolV1beta3QueuingConfiguration';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3QueuingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.handSize != null) {
      yield r'handSize';
      yield serializers.serialize(
        object.handSize,
        specifiedType: const FullType(int),
      );
    }
    if (object.queueLengthLimit != null) {
      yield r'queueLengthLimit';
      yield serializers.serialize(
        object.queueLengthLimit,
        specifiedType: const FullType(int),
      );
    }
    if (object.queues != null) {
      yield r'queues';
      yield serializers.serialize(
        object.queues,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiFlowcontrolV1beta3QueuingConfiguration object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiFlowcontrolV1beta3QueuingConfigurationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'handSize':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.handSize = valueDes;
          break;
        case r'queueLengthLimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.queueLengthLimit = valueDes;
          break;
        case r'queues':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.queues = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiFlowcontrolV1beta3QueuingConfiguration deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiFlowcontrolV1beta3QueuingConfigurationBuilder();
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

