//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_event_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:k8s/src/model/io_k8s_api_events_v1_event_series.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_events_v1_event.g.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
///
/// Properties:
/// * [action] - action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [deprecatedCount] - deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
/// * [deprecatedFirstTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [deprecatedLastTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [deprecatedSource] 
/// * [eventTime] - MicroTime is version of Time with microsecond level precision.
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [metadata] 
/// * [note] - note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
/// * [reason] - reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
/// * [regarding] 
/// * [related] 
/// * [reportingController] - reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
/// * [reportingInstance] - reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
/// * [series] 
/// * [type] - type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
@BuiltValue()
abstract class IoK8sApiEventsV1Event implements Built<IoK8sApiEventsV1Event, IoK8sApiEventsV1EventBuilder> {
  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  @BuiltValueField(wireName: r'action')
  String? get action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  @BuiltValueField(wireName: r'deprecatedCount')
  int? get deprecatedCount;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'deprecatedFirstTimestamp')
  DateTime? get deprecatedFirstTimestamp;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'deprecatedLastTimestamp')
  DateTime? get deprecatedLastTimestamp;

  @BuiltValueField(wireName: r'deprecatedSource')
  IoK8sApiCoreV1EventSource? get deprecatedSource;

  /// MicroTime is version of Time with microsecond level precision.
  @BuiltValueField(wireName: r'eventTime')
  DateTime get eventTime;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta? get metadata;

  /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  @BuiltValueField(wireName: r'note')
  String? get note;

  /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'regarding')
  IoK8sApiCoreV1ObjectReference? get regarding;

  @BuiltValueField(wireName: r'related')
  IoK8sApiCoreV1ObjectReference? get related;

  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  @BuiltValueField(wireName: r'reportingController')
  String? get reportingController;

  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  @BuiltValueField(wireName: r'reportingInstance')
  String? get reportingInstance;

  @BuiltValueField(wireName: r'series')
  IoK8sApiEventsV1EventSeries? get series;

  /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiEventsV1Event._();

  factory IoK8sApiEventsV1Event([void updates(IoK8sApiEventsV1EventBuilder b)]) = _$IoK8sApiEventsV1Event;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiEventsV1EventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiEventsV1Event> get serializer => _$IoK8sApiEventsV1EventSerializer();
}

class _$IoK8sApiEventsV1EventSerializer implements PrimitiveSerializer<IoK8sApiEventsV1Event> {
  @override
  final Iterable<Type> types = const [IoK8sApiEventsV1Event, _$IoK8sApiEventsV1Event];

  @override
  final String wireName = r'IoK8sApiEventsV1Event';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiEventsV1Event object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.action != null) {
      yield r'action';
      yield serializers.serialize(
        object.action,
        specifiedType: const FullType(String),
      );
    }
    if (object.apiVersion != null) {
      yield r'apiVersion';
      yield serializers.serialize(
        object.apiVersion,
        specifiedType: const FullType(String),
      );
    }
    if (object.deprecatedCount != null) {
      yield r'deprecatedCount';
      yield serializers.serialize(
        object.deprecatedCount,
        specifiedType: const FullType(int),
      );
    }
    if (object.deprecatedFirstTimestamp != null) {
      yield r'deprecatedFirstTimestamp';
      yield serializers.serialize(
        object.deprecatedFirstTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deprecatedLastTimestamp != null) {
      yield r'deprecatedLastTimestamp';
      yield serializers.serialize(
        object.deprecatedLastTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deprecatedSource != null) {
      yield r'deprecatedSource';
      yield serializers.serialize(
        object.deprecatedSource,
        specifiedType: const FullType(IoK8sApiCoreV1EventSource),
      );
    }
    yield r'eventTime';
    yield serializers.serialize(
      object.eventTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
      );
    }
    if (object.note != null) {
      yield r'note';
      yield serializers.serialize(
        object.note,
        specifiedType: const FullType(String),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.regarding != null) {
      yield r'regarding';
      yield serializers.serialize(
        object.regarding,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.related != null) {
      yield r'related';
      yield serializers.serialize(
        object.related,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.reportingController != null) {
      yield r'reportingController';
      yield serializers.serialize(
        object.reportingController,
        specifiedType: const FullType(String),
      );
    }
    if (object.reportingInstance != null) {
      yield r'reportingInstance';
      yield serializers.serialize(
        object.reportingInstance,
        specifiedType: const FullType(String),
      );
    }
    if (object.series != null) {
      yield r'series';
      yield serializers.serialize(
        object.series,
        specifiedType: const FullType(IoK8sApiEventsV1EventSeries),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiEventsV1Event object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiEventsV1EventBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.action = valueDes;
          break;
        case r'apiVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.apiVersion = valueDes;
          break;
        case r'deprecatedCount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.deprecatedCount = valueDes;
          break;
        case r'deprecatedFirstTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.deprecatedFirstTimestamp = valueDes;
          break;
        case r'deprecatedLastTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.deprecatedLastTimestamp = valueDes;
          break;
        case r'deprecatedSource':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1EventSource),
          ) as IoK8sApiCoreV1EventSource;
          result.deprecatedSource.replace(valueDes);
          break;
        case r'eventTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.eventTime = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'note':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.note = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'regarding':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.regarding.replace(valueDes);
          break;
        case r'related':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.related.replace(valueDes);
          break;
        case r'reportingController':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportingController = valueDes;
          break;
        case r'reportingInstance':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportingInstance = valueDes;
          break;
        case r'series':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiEventsV1EventSeries),
          ) as IoK8sApiEventsV1EventSeries;
          result.series.replace(valueDes);
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
  IoK8sApiEventsV1Event deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiEventsV1EventBuilder();
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

