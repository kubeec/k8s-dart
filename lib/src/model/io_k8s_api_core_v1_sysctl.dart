//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_sysctl.g.dart';

/// Sysctl defines a kernel parameter to be set
///
/// Properties:
/// * [name] - Name of a property to set
/// * [value] - Value of a property to set
@BuiltValue()
abstract class IoK8sApiCoreV1Sysctl implements Built<IoK8sApiCoreV1Sysctl, IoK8sApiCoreV1SysctlBuilder> {
  /// Name of a property to set
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Value of a property to set
  @BuiltValueField(wireName: r'value')
  String get value;

  IoK8sApiCoreV1Sysctl._();

  factory IoK8sApiCoreV1Sysctl([void updates(IoK8sApiCoreV1SysctlBuilder b)]) = _$IoK8sApiCoreV1Sysctl;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1SysctlBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1Sysctl> get serializer => _$IoK8sApiCoreV1SysctlSerializer();
}

class _$IoK8sApiCoreV1SysctlSerializer implements PrimitiveSerializer<IoK8sApiCoreV1Sysctl> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1Sysctl, _$IoK8sApiCoreV1Sysctl];

  @override
  final String wireName = r'IoK8sApiCoreV1Sysctl';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1Sysctl object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'value';
    yield serializers.serialize(
      object.value,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1Sysctl object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1SysctlBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.value = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1Sysctl deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1SysctlBuilder();
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

