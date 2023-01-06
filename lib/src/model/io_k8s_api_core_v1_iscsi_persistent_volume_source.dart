//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:k8s/src/model/io_k8s_api_core_v1_secret_reference.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'io_k8s_api_core_v1_iscsi_persistent_volume_source.g.dart';

/// ISCSIPersistentVolumeSource represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI volumes support ownership management and SELinux relabeling.
///
/// Properties:
/// * [chapAuthDiscovery] - chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
/// * [chapAuthSession] - chapAuthSession defines whether support iSCSI Session CHAP authentication
/// * [fsType] - fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
/// * [initiatorName] - initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
/// * [iqn] - iqn is Target iSCSI Qualified Name.
/// * [iscsiInterface] - iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
/// * [lun] - lun is iSCSI Target Lun number.
/// * [portals] - portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
/// * [readOnly] - readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
/// * [secretRef] 
/// * [targetPortal] - targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
@BuiltValue()
abstract class IoK8sApiCoreV1ISCSIPersistentVolumeSource implements Built<IoK8sApiCoreV1ISCSIPersistentVolumeSource, IoK8sApiCoreV1ISCSIPersistentVolumeSourceBuilder> {
  /// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  @BuiltValueField(wireName: r'chapAuthDiscovery')
  bool? get chapAuthDiscovery;

  /// chapAuthSession defines whether support iSCSI Session CHAP authentication
  @BuiltValueField(wireName: r'chapAuthSession')
  bool? get chapAuthSession;

  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  @BuiltValueField(wireName: r'fsType')
  String? get fsType;

  /// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  @BuiltValueField(wireName: r'initiatorName')
  String? get initiatorName;

  /// iqn is Target iSCSI Qualified Name.
  @BuiltValueField(wireName: r'iqn')
  String get iqn;

  /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  @BuiltValueField(wireName: r'iscsiInterface')
  String? get iscsiInterface;

  /// lun is iSCSI Target Lun number.
  @BuiltValueField(wireName: r'lun')
  int get lun;

  /// portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  @BuiltValueField(wireName: r'portals')
  BuiltList<String>? get portals;

  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  @BuiltValueField(wireName: r'readOnly')
  bool? get readOnly;

  @BuiltValueField(wireName: r'secretRef')
  IoK8sApiCoreV1SecretReference? get secretRef;

  /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  @BuiltValueField(wireName: r'targetPortal')
  String get targetPortal;

  IoK8sApiCoreV1ISCSIPersistentVolumeSource._();

  factory IoK8sApiCoreV1ISCSIPersistentVolumeSource([void updates(IoK8sApiCoreV1ISCSIPersistentVolumeSourceBuilder b)]) = _$IoK8sApiCoreV1ISCSIPersistentVolumeSource;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(IoK8sApiCoreV1ISCSIPersistentVolumeSourceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<IoK8sApiCoreV1ISCSIPersistentVolumeSource> get serializer => _$IoK8sApiCoreV1ISCSIPersistentVolumeSourceSerializer();
}

class _$IoK8sApiCoreV1ISCSIPersistentVolumeSourceSerializer implements PrimitiveSerializer<IoK8sApiCoreV1ISCSIPersistentVolumeSource> {
  @override
  final Iterable<Type> types = const [IoK8sApiCoreV1ISCSIPersistentVolumeSource, _$IoK8sApiCoreV1ISCSIPersistentVolumeSource];

  @override
  final String wireName = r'IoK8sApiCoreV1ISCSIPersistentVolumeSource';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    IoK8sApiCoreV1ISCSIPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.chapAuthDiscovery != null) {
      yield r'chapAuthDiscovery';
      yield serializers.serialize(
        object.chapAuthDiscovery,
        specifiedType: const FullType(bool),
      );
    }
    if (object.chapAuthSession != null) {
      yield r'chapAuthSession';
      yield serializers.serialize(
        object.chapAuthSession,
        specifiedType: const FullType(bool),
      );
    }
    if (object.fsType != null) {
      yield r'fsType';
      yield serializers.serialize(
        object.fsType,
        specifiedType: const FullType(String),
      );
    }
    if (object.initiatorName != null) {
      yield r'initiatorName';
      yield serializers.serialize(
        object.initiatorName,
        specifiedType: const FullType(String),
      );
    }
    yield r'iqn';
    yield serializers.serialize(
      object.iqn,
      specifiedType: const FullType(String),
    );
    if (object.iscsiInterface != null) {
      yield r'iscsiInterface';
      yield serializers.serialize(
        object.iscsiInterface,
        specifiedType: const FullType(String),
      );
    }
    yield r'lun';
    yield serializers.serialize(
      object.lun,
      specifiedType: const FullType(int),
    );
    if (object.portals != null) {
      yield r'portals';
      yield serializers.serialize(
        object.portals,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.readOnly != null) {
      yield r'readOnly';
      yield serializers.serialize(
        object.readOnly,
        specifiedType: const FullType(bool),
      );
    }
    if (object.secretRef != null) {
      yield r'secretRef';
      yield serializers.serialize(
        object.secretRef,
        specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
      );
    }
    yield r'targetPortal';
    yield serializers.serialize(
      object.targetPortal,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    IoK8sApiCoreV1ISCSIPersistentVolumeSource object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required IoK8sApiCoreV1ISCSIPersistentVolumeSourceBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'chapAuthDiscovery':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.chapAuthDiscovery = valueDes;
          break;
        case r'chapAuthSession':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.chapAuthSession = valueDes;
          break;
        case r'fsType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fsType = valueDes;
          break;
        case r'initiatorName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.initiatorName = valueDes;
          break;
        case r'iqn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iqn = valueDes;
          break;
        case r'iscsiInterface':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.iscsiInterface = valueDes;
          break;
        case r'lun':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.lun = valueDes;
          break;
        case r'portals':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.portals.replace(valueDes);
          break;
        case r'readOnly':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.readOnly = valueDes;
          break;
        case r'secretRef':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(IoK8sApiCoreV1SecretReference),
          ) as IoK8sApiCoreV1SecretReference;
          result.secretRef.replace(valueDes);
          break;
        case r'targetPortal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.targetPortal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  IoK8sApiCoreV1ISCSIPersistentVolumeSource deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = IoK8sApiCoreV1ISCSIPersistentVolumeSourceBuilder();
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

