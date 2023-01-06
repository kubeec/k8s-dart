//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_preconditions.g.dart';

/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
///
/// Properties:
/// * [resourceVersion] - Specifies the target ResourceVersion
/// * [uid] - Specifies the target UID.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1Preconditions implements Built<IoK8sApimachineryPkgApisMetaV1Preconditions, IoK8sApimachineryPkgApisMetaV1PreconditionsBuilder> {
  /// Specifies the target ResourceVersion
  @BuiltValueField(wireName: r'resourceVersion')
  String? get resourceVersion;

  /// Specifies the target UID.
  @BuiltValueField(wireName: r'uid')
  String? get uid;

  IoK8sApimachineryPkgApisMetaV1Preconditions._();

  factory IoK8sApimachineryPkgApisMetaV1Preconditions([void updates(IoK8sApimachineryPkgApisMetaV1PreconditionsBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1Preconditions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1PreconditionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1Preconditions> get serializer => _$IoK8sApimachineryPkgApisMetaV1PreconditionsSerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1PreconditionsSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1Preconditions> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1Preconditions, _$IoK8sApimachineryPkgApisMetaV1Preconditions];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1Preconditions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1Preconditions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.resourceVersion != null) {
      yield r'resourceVersion';
      yield serializers.serialize(
        object.resourceVersion,
        specifiedType: const FullType(String),
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
    IoK8sApimachineryPkgApisMetaV1Preconditions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1PreconditionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'resourceVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resourceVersion = valueDes;
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
  IoK8sApimachineryPkgApisMetaV1Preconditions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1PreconditionsBuilder();
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

