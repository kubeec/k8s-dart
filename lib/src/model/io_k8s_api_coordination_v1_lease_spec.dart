//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_coordination_v1_lease_spec.g.dart';

/// LeaseSpec is a specification of a Lease.
///
/// Properties:
/// * [acquireTime] - MicroTime is version of Time with microsecond level precision.
/// * [holderIdentity] - holderIdentity contains the identity of the holder of a current lease.
/// * [leaseDurationSeconds] - leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
/// * [leaseTransitions] - leaseTransitions is the number of transitions of a lease between holders.
/// * [renewTime] - MicroTime is version of Time with microsecond level precision.
@BuiltValue()
abstract class IoK8sApiCoordinationV1LeaseSpec implements Built<IoK8sApiCoordinationV1LeaseSpec, IoK8sApiCoordinationV1LeaseSpecBuilder> {
  /// MicroTime is version of Time with microsecond level precision.
  @BuiltValueField(wireName: r'acquireTime')
  DateTime? get acquireTime;

  /// holderIdentity contains the identity of the holder of a current lease.
  @BuiltValueField(wireName: r'holderIdentity')
  String? get holderIdentity;

  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  @BuiltValueField(wireName: r'leaseDurationSeconds')
  int? get leaseDurationSeconds;

  /// leaseTransitions is the number of transitions of a lease between holders.
  @BuiltValueField(wireName: r'leaseTransitions')
  int? get leaseTransitions;

  /// MicroTime is version of Time with microsecond level precision.
  @BuiltValueField(wireName: r'renewTime')
  DateTime? get renewTime;

  IoK8sApiCoordinationV1LeaseSpec._();

  factory IoK8sApiCoordinationV1LeaseSpec([void updates(IoK8sApiCoordinationV1LeaseSpecBuilder b)]) = _$IoK8sApiCoordinationV1LeaseSpec;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoordinationV1LeaseSpecBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoordinationV1LeaseSpec> get serializer => _$IoK8sApiCoordinationV1LeaseSpecSerializer();
}

class _$IoK8sApiCoordinationV1LeaseSpecSerializer implements PrimitiveSerializer<IoK8sApiCoordinationV1LeaseSpec> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoordinationV1LeaseSpec, _$IoK8sApiCoordinationV1LeaseSpec];

  @override
  final String wireName = r'IoK8sApiCoordinationV1LeaseSpec';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoordinationV1LeaseSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.acquireTime != null) {
      yield r'acquireTime';
      yield serializers.serialize(
        object.acquireTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.holderIdentity != null) {
      yield r'holderIdentity';
      yield serializers.serialize(
        object.holderIdentity,
        specifiedType: const FullType(String),
      );
    }
    if (object.leaseDurationSeconds != null) {
      yield r'leaseDurationSeconds';
      yield serializers.serialize(
        object.leaseDurationSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.leaseTransitions != null) {
      yield r'leaseTransitions';
      yield serializers.serialize(
        object.leaseTransitions,
        specifiedType: const FullType(int),
      );
    }
    if (object.renewTime != null) {
      yield r'renewTime';
      yield serializers.serialize(
        object.renewTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoordinationV1LeaseSpec object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoordinationV1LeaseSpecBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'acquireTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.acquireTime = valueDes;
          break;
        case r'holderIdentity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.holderIdentity = valueDes;
          break;
        case r'leaseDurationSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.leaseDurationSeconds = valueDes;
          break;
        case r'leaseTransitions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.leaseTransitions = valueDes;
          break;
        case r'renewTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.renewTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoordinationV1LeaseSpec deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoordinationV1LeaseSpecBuilder();
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

