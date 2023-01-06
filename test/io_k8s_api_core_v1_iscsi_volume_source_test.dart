import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiCoreV1ISCSIVolumeSource
void main() {
  final instance = IoK8sApiCoreV1ISCSIVolumeSourceBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiCoreV1ISCSIVolumeSource, () {
    // chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
    // bool chapAuthDiscovery
    test('to test the property `chapAuthDiscovery`', () async {
      // TODO
    });

    // chapAuthSession defines whether support iSCSI Session CHAP authentication
    // bool chapAuthSession
    test('to test the property `chapAuthSession`', () async {
      // TODO
    });

    // fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: \"ext4\", \"xfs\", \"ntfs\". Implicitly inferred to be \"ext4\" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#iscsi
    // String fsType
    test('to test the property `fsType`', () async {
      // TODO
    });

    // initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be created for the connection.
    // String initiatorName
    test('to test the property `initiatorName`', () async {
      // TODO
    });

    // iqn is the target iSCSI Qualified Name.
    // String iqn
    test('to test the property `iqn`', () async {
      // TODO
    });

    // iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default' (tcp).
    // String iscsiInterface
    test('to test the property `iscsiInterface`', () async {
      // TODO
    });

    // lun represents iSCSI Target Lun number.
    // int lun
    test('to test the property `lun`', () async {
      // TODO
    });

    // portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    // BuiltList<String> portals
    test('to test the property `portals`', () async {
      // TODO
    });

    // readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    // bool readOnly
    test('to test the property `readOnly`', () async {
      // TODO
    });

    // IoK8sApiCoreV1LocalObjectReference secretRef
    test('to test the property `secretRef`', () async {
      // TODO
    });

    // targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the port is other than default (typically TCP ports 860 and 3260).
    // String targetPortal
    test('to test the property `targetPortal`', () async {
      // TODO
    });

  });
}
