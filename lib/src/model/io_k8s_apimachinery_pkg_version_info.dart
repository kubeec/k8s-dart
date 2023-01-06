//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_apimachinery_pkg_version_info.g.dart';

/// Info contains versioning information. how we'll want to distribute that information.
///
/// Properties:
/// * [buildDate] 
/// * [compiler] 
/// * [gitCommit] 
/// * [gitTreeState] 
/// * [gitVersion] 
/// * [goVersion] 
/// * [major] 
/// * [minor] 
/// * [platform] 
@BuiltValue()
abstract class IoK8sApimachineryPkgVersionInfo implements Built<IoK8sApimachineryPkgVersionInfo, IoK8sApimachineryPkgVersionInfoBuilder> {
  @BuiltValueField(wireName: r'buildDate')
  String get buildDate;

  @BuiltValueField(wireName: r'compiler')
  String get compiler;

  @BuiltValueField(wireName: r'gitCommit')
  String get gitCommit;

  @BuiltValueField(wireName: r'gitTreeState')
  String get gitTreeState;

  @BuiltValueField(wireName: r'gitVersion')
  String get gitVersion;

  @BuiltValueField(wireName: r'goVersion')
  String get goVersion;

  @BuiltValueField(wireName: r'major')
  String get major;

  @BuiltValueField(wireName: r'minor')
  String get minor;

  @BuiltValueField(wireName: r'platform')
  String get platform;

  IoK8sApimachineryPkgVersionInfo._();

  factory IoK8sApimachineryPkgVersionInfo([void updates(IoK8sApimachineryPkgVersionInfoBuilder b)]) = _$IoK8sApimachineryPkgVersionInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApimachineryPkgVersionInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApimachineryPkgVersionInfo> get serializer => _$IoK8sApimachineryPkgVersionInfoSerializer();
}

class _$IoK8sApimachineryPkgVersionInfoSerializer implements PrimitiveSerializer<IoK8sApimachineryPkgVersionInfo> {
  @override
  final Iterable<Type> types = const [IoK8sApimachineryPkgVersionInfo, _$IoK8sApimachineryPkgVersionInfo];

  @override
  final String wireName = r'IoK8sApimachineryPkgVersionInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApimachineryPkgVersionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'buildDate';
    yield serializers.serialize(
      object.buildDate,
      specifiedType: const FullType(String),
    );
    yield r'compiler';
    yield serializers.serialize(
      object.compiler,
      specifiedType: const FullType(String),
    );
    yield r'gitCommit';
    yield serializers.serialize(
      object.gitCommit,
      specifiedType: const FullType(String),
    );
    yield r'gitTreeState';
    yield serializers.serialize(
      object.gitTreeState,
      specifiedType: const FullType(String),
    );
    yield r'gitVersion';
    yield serializers.serialize(
      object.gitVersion,
      specifiedType: const FullType(String),
    );
    yield r'goVersion';
    yield serializers.serialize(
      object.goVersion,
      specifiedType: const FullType(String),
    );
    yield r'major';
    yield serializers.serialize(
      object.major,
      specifiedType: const FullType(String),
    );
    yield r'minor';
    yield serializers.serialize(
      object.minor,
      specifiedType: const FullType(String),
    );
    yield r'platform';
    yield serializers.serialize(
      object.platform,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApimachineryPkgVersionInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApimachineryPkgVersionInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'buildDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.buildDate = valueDes;
          break;
        case r'compiler':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.compiler = valueDes;
          break;
        case r'gitCommit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitCommit = valueDes;
          break;
        case r'gitTreeState':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitTreeState = valueDes;
          break;
        case r'gitVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gitVersion = valueDes;
          break;
        case r'goVersion':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.goVersion = valueDes;
          break;
        case r'major':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.major = valueDes;
          break;
        case r'minor':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.minor = valueDes;
          break;
        case r'platform':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.platform = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApimachineryPkgVersionInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApimachineryPkgVersionInfoBuilder();
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

