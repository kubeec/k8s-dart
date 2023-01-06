//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_apis_meta_v1_group_version_for_discovery.g.dart';

/// GroupVersion contains the \"group/version\" and \"version\" string of a version. It is made a struct to keep extensibility.
///
/// Properties:
/// * [groupVersion] - groupVersion specifies the API group and version in the form \"group/version\"
/// * [version] - version specifies the version in the form of \"version\". This is to save the clients the trouble of splitting the GroupVersion.
@BuiltValue()
abstract class IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery implements Built<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery, IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoveryBuilder> {
  /// groupVersion specifies the API group and version in the form \"group/version\"
  @BuiltValueField(wireName: r'groupVersion')
  String get groupVersion;

  /// version specifies the version in the form of \"version\". This is to save the clients the trouble of splitting the GroupVersion.
  @BuiltValueField(wireName: r'version')
  String get version;

  IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery._();

  factory IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery([void updates(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoveryBuilder b)]) = _$IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoveryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery> get serializer => _$IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoverySerializer();
}

class _$IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoverySerializer implements PrimitiveSerializer<IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery, _$IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery];

  @override
  final String wireName = r'IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'groupVersion';
    yield serializers.serialize(
      object.groupVersion,
      specifiedType: const FullType(String),
    );
    yield r'version';
    yield serializers.serialize(
      object.version,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoveryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'groupVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.groupVersion = valueDes;
          break;
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscovery deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgApisMetaV1GroupVersionForDiscoveryBuilder();
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

