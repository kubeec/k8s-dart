//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_events_v1_event_series.g.dart';

/// EventSeries contain information on series of events, i.e. thing that was/is happening continuously for some time. How often to update the EventSeries is up to the event reporters. The default event reporter in \"k8s.io/client-go/tools/events/event_broadcaster.go\" shows how this struct is updated on heartbeats and can guide customized reporter implementations.
///
/// Properties:
/// * [count] - count is the number of occurrences in this series up to the last heartbeat time.
/// * [lastObservedTime] - MicroTime is version of Time with microsecond level precision.
@BuiltValue()
abstract class IoK8sApiEventsV1EventSeries implements Built<IoK8sApiEventsV1EventSeries, IoK8sApiEventsV1EventSeriesBuilder> {
  /// count is the number of occurrences in this series up to the last heartbeat time.
  @BuiltValueField(wireName: r'count')
  int get count;

  /// MicroTime is version of Time with microsecond level precision.
  @BuiltValueField(wireName: r'lastObservedTime')
  DateTime get lastObservedTime;

  IoK8sApiEventsV1EventSeries._();

  factory IoK8sApiEventsV1EventSeries([void updates(IoK8sApiEventsV1EventSeriesBuilder b)]) = _$IoK8sApiEventsV1EventSeries;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiEventsV1EventSeriesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiEventsV1EventSeries> get serializer => _$IoK8sApiEventsV1EventSeriesSerializer();
}

class _$IoK8sApiEventsV1EventSeriesSerializer implements PrimitiveSerializer<IoK8sApiEventsV1EventSeries> {
  @override
  final Iterable<Type> types = const [IoK8sApiEventsV1EventSeries, _$IoK8sApiEventsV1EventSeries];

  @override
  final String wireName = r'IoK8sApiEventsV1EventSeries';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiEventsV1EventSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'count';
    yield serializers.serialize(
      object.count,
      specifiedType: const FullType(int),
    );
    yield r'lastObservedTime';
    yield serializers.serialize(
      object.lastObservedTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiEventsV1EventSeries object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiEventsV1EventSeriesBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'lastObservedTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastObservedTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiEventsV1EventSeries deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiEventsV1EventSeriesBuilder();
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

