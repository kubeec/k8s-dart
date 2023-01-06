//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_status_cause.g.dart';

/// StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
///
/// Properties:
/// * [field] - The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.  Examples:   \"name\" - the field \"name\" on the current resource   \"items[0].name\" - the field \"name\" on the first array entry in \"items\"
/// * [message] - A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
/// * [reason] - A machine-readable description of the cause of the error. If this value is empty there is no information available.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1StatusCause implements Built<IoK8sApimachineryPkgApisMetaV1StatusCause, IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder> {
  /// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.  Examples:   \"name\" - the field \"name\" on the current resource   \"items[0].name\" - the field \"name\" on the first array entry in \"items\"
  @BuiltValueField(wireName: r'field')
  String? get field;

  /// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  @BuiltValueField(wireName: r'message')
  String? get message;

  /// A machine-readable description of the cause of the error. If this value is empty there is no information available.
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  IoK8sApimachineryPkgApisMetaV1StatusCause._();

  factory IoK8sApimachineryPkgApisMetaV1StatusCause([void updates(IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1StatusCause;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1StatusCause> get serializer => _$IoK8sApimachineryPkgApisMetaV1StatusCauseSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1StatusCauseSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1StatusCause> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1StatusCause, _$IoK8sApimachineryPkgApisMetaV1StatusCause];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1StatusCause';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1StatusCause object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.field != null) {
      yield r'field';
      yield serializers.serialize(
        object.field,
        specifiedType: const FullType(String),
      );
    }
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
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
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1StatusCause object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'field':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.field = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1StatusCause deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1StatusCauseBuilder();
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

