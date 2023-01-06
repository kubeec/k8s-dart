//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_apimachinery_pkg_apis_meta_v1_status_cause.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_status_details.g.dart';

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
///
/// Properties:
/// * [causes] - The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
/// * [group] - The group attribute of the resource associated with the status StatusReason.
/// * [kind] - The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
/// * [name] - The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
/// * [retryAfterSeconds] - If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
/// * [uid] - UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1StatusDetails implements Built<IoK8sApimachineryPkgApisMetaV1StatusDetails, IoK8sApimachineryPkgApisMetaV1StatusDetailsBuilder> {
  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  @BuiltValueField(wireName: r'causes')
  BuiltList<IoK8sApimachineryPkgApisMetaV1StatusCause>? get causes;

  /// The group attribute of the resource associated with the status StatusReason.
  @BuiltValueField(wireName: r'group')
  String? get group;

  /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @BuiltValueField(wireName: r'kind')
  String? get kind;

  /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  @BuiltValueField(wireName: r'retryAfterSeconds')
  int? get retryAfterSeconds;

  /// UID of the resource. (when there is a single resource which can be described). More info: http://kubernetes.io/docs/user-guide/identifiers#uids
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  IoK8sApimachineryPkgApisMetaV1StatusDetails._();

  factory IoK8sApimachineryPkgApisMetaV1StatusDetails([void updates(IoK8sApimachineryPkgApisMetaV1StatusDetailsBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1StatusDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1StatusDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1StatusDetails> get serializer => _$IoK8sApimachineryPkgApisMetaV1StatusDetailsSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1StatusDetailsSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1StatusDetails> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1StatusDetails, _$IoK8sApimachineryPkgApisMetaV1StatusDetails];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1StatusDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1StatusDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.causes != null) {
      yield r'causes';
      yield serializers.serialize(
        object.causes,
        specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1StatusCause)]),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(String),
      );
    }
    if (object.kind != null) {
      yield r'kind';
      yield serializers.serialize(
        object.kind,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.retryAfterSeconds != null) {
      yield r'retryAfterSeconds';
      yield serializers.serialize(
        object.retryAfterSeconds,
        specifiedType: const FullType(int),
      );
    }
    if (object.uid != null) {
      yield r'uid';
      yield serializers.serialize(
        object.uid,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1StatusDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1StatusDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'causes':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(IoK8sApimachineryPkgApisMetaV1StatusCause)]),
          ) as BuiltList<IoK8sApimachineryPkgApisMetaV1StatusCause>;
          result.causes.replace(valueDes);
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.group = valueDes;
          break;
        case r'kind':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.kind = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'retryAfterSeconds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.retryAfterSeconds = valueDes;
          break;
        case r'uid':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uid = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1StatusDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1StatusDetailsBuilder();
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

