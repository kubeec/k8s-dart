//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_windows_security_context_options.g.dart';

/// WindowsSecurityContextOptions contain Windows-specific options and credentials.
///
/// Properties:
/// * [gmsaCredentialSpec] - GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
/// * [gmsaCredentialSpecName] - GMSACredentialSpecName is the name of the GMSA credential spec to use.
/// * [hostProcess] - HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
/// * [runAsUserName] - The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
@BuiltValue()
abstract class IoK8sApiCoreV1WindowsSecurityContextOptions implements Built<IoK8sApiCoreV1WindowsSecurityContextOptions, IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder> {
  /// GMSACredentialSpec is where the GMSA admission webhook (https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA credential spec named by the GMSACredentialSpecName field.
  @BuiltValueField(wireName: r'gmsaCredentialSpec')
  String? get gmsaCredentialSpec;

  /// GMSACredentialSpecName is the name of the GMSA credential spec to use.
  @BuiltValueField(wireName: r'gmsaCredentialSpecName')
  String? get gmsaCredentialSpecName;

  /// HostProcess determines if a container should be run as a 'Host Process' container. This field is alpha-level and will only be honored by components that enable the WindowsHostProcessContainers feature flag. Setting this field without the feature flag will result in errors when validating the Pod. All of a Pod's containers must have the same effective HostProcess value (it is not allowed to have a mix of HostProcess containers and non-HostProcess containers).  In addition, if HostProcess is true then HostNetwork must also be set to true.
  @BuiltValueField(wireName: r'hostProcess')
  bool? get hostProcess;

  /// The UserName in Windows to run the entrypoint of the container process. Defaults to the user specified in image metadata if unspecified. May also be set in PodSecurityContext. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  @BuiltValueField(wireName: r'runAsUserName')
  String? get runAsUserName;

  IoK8sApiCoreV1WindowsSecurityContextOptions._();

  factory IoK8sApiCoreV1WindowsSecurityContextOptions([void updates(IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder b)]) = _$IoK8sApiCoreV1WindowsSecurityContextOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1WindowsSecurityContextOptions> get serializer => _$IoK8sApiCoreV1WindowsSecurityContextOptionsSerializer();
}

class _$IoK8sApiCoreV1WindowsSecurityContextOptionsSerializer implements PrimitiveSerializer<IoK8sApiCoreV1WindowsSecurityContextOptions> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1WindowsSecurityContextOptions, _$IoK8sApiCoreV1WindowsSecurityContextOptions];

  @override
  final String wireName = r'IoK8sApiCoreV1WindowsSecurityContextOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1WindowsSecurityContextOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.gmsaCredentialSpec != null) {
      yield r'gmsaCredentialSpec';
      yield serializers.serialize(
        object.gmsaCredentialSpec,
        specifiedType: const FullType(String),
      );
    }
    if (object.gmsaCredentialSpecName != null) {
      yield r'gmsaCredentialSpecName';
      yield serializers.serialize(
        object.gmsaCredentialSpecName,
        specifiedType: const FullType(String),
      );
    }
    if (object.hostProcess != null) {
      yield r'hostProcess';
      yield serializers.serialize(
        object.hostProcess,
        specifiedType: const FullType(bool),
      );
    }
    if (object.runAsUserName != null) {
      yield r'runAsUserName';
      yield serializers.serialize(
        object.runAsUserName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1WindowsSecurityContextOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'gmsaCredentialSpec':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gmsaCredentialSpec = valueDes;
          break;
        case r'gmsaCredentialSpecName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.gmsaCredentialSpecName = valueDes;
          break;
        case r'hostProcess':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.hostProcess = valueDes;
          break;
        case r'runAsUserName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.runAsUserName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1WindowsSecurityContextOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1WindowsSecurityContextOptionsBuilder();
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

