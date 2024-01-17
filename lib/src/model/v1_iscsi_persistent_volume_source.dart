//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_secret_reference.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_iscsi_persistent_volume_source.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ISCSIPersistentVolumeSource {
  /// Returns a new [V1ISCSIPersistentVolumeSource] instance.
  V1ISCSIPersistentVolumeSource({

     this.chapAuthDiscovery,

     this.chapAuthSession,

     this.fsType,

     this.initiatorName,

    required  this.iqn,

     this.iscsiInterface,

    required  this.lun,

     this.portals,

     this.readOnly,

     this.secretRef,

    required  this.targetPortal,
  });

      /// chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
  @JsonKey(
    
    name: r'chapAuthDiscovery',
    required: false,
    includeIfNull: false
  )


  final bool? chapAuthDiscovery;



      /// chapAuthSession defines whether support iSCSI Session CHAP authentication
  @JsonKey(
    
    name: r'chapAuthSession',
    required: false,
    includeIfNull: false
  )


  final bool? chapAuthSession;



      /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
  @JsonKey(
    
    name: r'fsType',
    required: false,
    includeIfNull: false
  )


  final String? fsType;



      /// initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
  @JsonKey(
    
    name: r'initiatorName',
    required: false,
    includeIfNull: false
  )


  final String? initiatorName;



      /// iqn is Target iSCSI Qualified Name.
  @JsonKey(
    
    name: r'iqn',
    required: true,
    includeIfNull: false
  )


  final String iqn;



      /// iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
  @JsonKey(
    
    name: r'iscsiInterface',
    required: false,
    includeIfNull: false
  )


  final String? iscsiInterface;



      /// lun is iSCSI Target Lun number.
  @JsonKey(
    
    name: r'lun',
    required: true,
    includeIfNull: false
  )


  final int lun;



      /// portals is the iSCSI Target Portal List. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  @JsonKey(
    
    name: r'portals',
    required: false,
    includeIfNull: false
  )


  final List<String>? portals;



      /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
  @JsonKey(
    
    name: r'readOnly',
    required: false,
    includeIfNull: false
  )


  final bool? readOnly;



  @JsonKey(
    
    name: r'secretRef',
    required: false,
    includeIfNull: false
  )


  final V1SecretReference? secretRef;



      /// targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
  @JsonKey(
    
    name: r'targetPortal',
    required: true,
    includeIfNull: false
  )


  final String targetPortal;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ISCSIPersistentVolumeSource &&
     other.chapAuthDiscovery == chapAuthDiscovery &&
     other.chapAuthSession == chapAuthSession &&
     other.fsType == fsType &&
     other.initiatorName == initiatorName &&
     other.iqn == iqn &&
     other.iscsiInterface == iscsiInterface &&
     other.lun == lun &&
     other.portals == portals &&
     other.readOnly == readOnly &&
     other.secretRef == secretRef &&
     other.targetPortal == targetPortal;

  @override
  int get hashCode =>
    chapAuthDiscovery.hashCode +
    chapAuthSession.hashCode +
    fsType.hashCode +
    initiatorName.hashCode +
    iqn.hashCode +
    iscsiInterface.hashCode +
    lun.hashCode +
    portals.hashCode +
    readOnly.hashCode +
    secretRef.hashCode +
    targetPortal.hashCode;

  factory V1ISCSIPersistentVolumeSource.fromJson(Map<String, dynamic> json) => _$V1ISCSIPersistentVolumeSourceFromJson(json);

  Map<String, dynamic> toJson() => _$V1ISCSIPersistentVolumeSourceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

