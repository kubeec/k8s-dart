import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiAppsV1ControllerRevision
void main() {
  final instance = IoK8sApiAppsV1ControllerRevisionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiAppsV1ControllerRevision, () {
    // APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    // String apiVersion
    test('to test the property `apiVersion`', () async {
      // TODO
    });

    // RawExtension is used to hold extensions in external versions.  To use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.  // Internal package:   type MyAPIObject struct {   runtime.TypeMeta `json:\",inline\"`   MyPlugin runtime.Object `json:\"myPlugin\"`  }   type PluginA struct {   AOption string `json:\"aOption\"`  }  // External package:   type MyAPIObject struct {   runtime.TypeMeta `json:\",inline\"`   MyPlugin runtime.RawExtension `json:\"myPlugin\"`  }   type PluginA struct {   AOption string `json:\"aOption\"`  }  // On the wire, the JSON will look something like this:   {   \"kind\":\"MyAPIObject\",   \"apiVersion\":\"v1\",   \"myPlugin\": {    \"kind\":\"PluginA\",    \"aOption\":\"foo\",   },  }  So what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)
    // JsonObject data
    test('to test the property `data`', () async {
      // TODO
    });

    // Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // IoK8sApimachineryPkgApisMetaV1ObjectMeta metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Revision indicates the revision of the state represented by Data.
    // int revision
    test('to test the property `revision`', () async {
      // TODO
    });

  });
}
