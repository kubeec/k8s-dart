//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/io_k8s_api_core_v1_event_source.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_event_series.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_object_reference.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_object_meta.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_event.g.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
///
/// Properties:
/// * [action] - What action was taken/failed regarding to the Regarding object.
/// * [apiVersion] - APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
/// * [count] - The number of times this event has occurred.
/// * [eventTime] - MicroTime is version of Time with microsecond level precision.
/// * [firstTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [involvedObject] 
/// * [kind] - Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [lastTimestamp] - Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
/// * [message] - A human-readable description of the status of this operation.
/// * [metadata] 
/// * [reason] - This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
/// * [related] 
/// * [reportingComponent] - Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
/// * [reportingInstance] - ID of the controller instance, e.g. `kubelet-xyzf`.
/// * [series] 
/// * [source_] 
/// * [type] - Type of this event (Normal, Warning), new types could be added in the future
@BuiltValue()
abstract class IoK8sApiCoreV1Event implements Built<IoK8sApiCoreV1Event, IoK8sApiCoreV1EventBuilder> {
  /// What action was taken/failed regarding to the Regarding object.
  @BuiltValueField(wireName: r'action')
  String? get action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  @BuiltValueField(wireName: r'apiVersion')
  String? get apiVersion;

  /// The number of times this event has occurred.
  @BuiltValueField(wireName: r'count')
  int? get count;

  /// MicroTime is version of Time with microsecond level precision.
  @BuiltValueField(wireName: r'eventTime')
  DateTime? get eventTime;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'firstTimestamp')
  DateTime? get firstTimestamp;

  @BuiltValueField(wireName: r'involvedObject')
  IoK8sApiCoreV1ObjectReference get involvedObject;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// Time is a wrapper around time.Time which supports correct marshaling to YAML and JSON.  Wrappers are provided for many of the factory methods that the time package offers.
  @BuiltValueField(wireName: r'lastTimestamp')
  DateTime? get lastTimestamp;

  /// A human-readable description of the status of this operation.
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'metadata')
  IoK8sApimachineryPkgApisMetaV1ObjectMeta get metadata;

  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  @BuiltValueField(wireName: r'related')
  IoK8sApiCoreV1ObjectReference? get related;

  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  @BuiltValueField(wireName: r'reportingComponent')
  String? get reportingComponent;

  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  @BuiltValueField(wireName: r'reportingInstance')
  String? get reportingInstance;

  @BuiltValueField(wireName: r'series')
  IoK8sApiCoreV1EventSeries? get series;

  @BuiltValueField(wireName: r'source')
  IoK8sApiCoreV1EventSource? get source_;

  /// Type of this event (Normal, Warning), new types could be added in the future
  @BuiltValueField(wireName: r'type')
  String? get type;

  IoK8sApiCoreV1Event._();

  factory IoK8sApiCoreV1Event([void updates(IoK8sApiCoreV1EventBuilder b)]) = _$IoK8sApiCoreV1Event;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1EventBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Event> get serializer => _$IoK8sApiCoreV1EventSerializer();
}

class _$IoK8sApiCoreV1EventSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Event> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Event, _$IoK8sApiCoreV1Event];

  @override
  final String wireName = r'IoK8sApiCoreV1Event';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Event object, {
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
    if (object.count != null) {
      yield r'count';
      yield serializers.serialize(
        object.count,
        specifiedType: const FullType(int),
      );
    }
    if (object.eventTime != null) {
      yield r'eventTime';
      yield serializers.serialize(
        object.eventTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.firstTimestamp != null) {
      yield r'firstTimestamp';
      yield serializers.serialize(
        object.firstTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    yield r'involvedObject';
    yield serializers.serialize(
      object.involvedObject,
      specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
    );
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastTimestamp != null) {
      yield r'lastTimestamp';
      yield serializers.serialize(
        object.lastTimestamp,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    yield r'metadata';
    yield serializers.serialize(
      object.metadata,
      specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
    );
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
    if (object.related != null) {
      yield r'related';
      yield serializers.serialize(
        object.related,
        specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
      );
    }
    if (object.reportingComponent != null) {
      yield r'reportingComponent';
      yield serializers.serialize(
        object.reportingComponent,
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
        specifiedType: const FullType(IoK8sApiCoreV1EventSeries),
      );
    }
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(IoK8sApiCoreV1EventSource),
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
    IoK8sApiCoreV1Event object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1EventBuilder result,
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
        case r'count':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.count = valueDes;
          break;
        case r'eventTime':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.eventTime = valueDes;
          break;
        case r'firstTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.firstTimestamp = valueDes;
          break;
        case r'involvedObject':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.involvedObject.replace(valueDes);
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'lastTimestamp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastTimestamp = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApimachineryPkgApisMetaV1ObjectMeta),
          ) as IoK8sApimachineryPkgApisMetaV1ObjectMeta;
          result.metadata.replace(valueDes);
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        case r'related':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1ObjectReference),
          ) as IoK8sApiCoreV1ObjectReference;
          result.related.replace(valueDes);
          break;
        case r'reportingComponent':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reportingComponent = valueDes;
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
            specifiedType: const FullType(IoK8sApiCoreV1EventSeries),
          ) as IoK8sApiCoreV1EventSeries;
          result.series.replace(valueDes);
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1EventSource),
          ) as IoK8sApiCoreV1EventSource;
          result.source_.replace(valueDes);
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
  IoK8sApiCoreV1Event deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1EventBuilder();
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

