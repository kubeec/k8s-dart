import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiStorageV1CSINodeDriver
void main() {
  final instance = IoK8sApiStorageV1CSINodeDriverBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiStorageV1CSINodeDriver, () {
    // IoK8sApiStorageV1VolumeNodeResources allocatable
    test('to test the property `allocatable`', () async {
      // TODO
    });

    // This is the name of the CSI driver that this object refers to. This MUST be the same name returned by the CSI GetPluginName() call for that driver.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // nodeID of the node from the driver point of view. This field enables Kubernetes to communicate with storage systems that do not share the same nomenclature for nodes. For example, Kubernetes may refer to a given node as \"node1\", but the storage system may refer to the same node as \"nodeA\". When Kubernetes issues a command to the storage system to attach a volume to a specific node, it can use this field to refer to the node name using the ID that the storage system will understand, e.g. \"nodeA\" instead of \"node1\". This field is required.
    // String nodeID
    test('to test the property `nodeID`', () async {
      // TODO
    });

    // topologyKeys is the list of keys supported by the driver. When a driver is initialized on a cluster, it provides a set of topology keys that it understands (e.g. \"company.com/zone\", \"company.com/region\"). When a driver is initialized on a node, it provides the same topology keys along with values. Kubelet will expose these topology keys as labels on its own node object. When Kubernetes does topology aware provisioning, it can use this list to determine which labels it should retrieve from the node object and pass back to the driver. It is possible for different nodes to use different topology keys. This can be empty if driver does not support topology.
    // BuiltList<String> topologyKeys
    test('to test the property `topologyKeys`', () async {
      // TODO
    });

  });
}
