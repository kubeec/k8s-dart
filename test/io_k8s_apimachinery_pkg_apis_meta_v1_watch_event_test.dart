//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:k8s/api.dart';
import 'package:test/test.dart';

// tests for IoK8sApimachineryPkgApisMetaV1WatchEvent
void main() {
  // final instance = IoK8sApimachineryPkgApisMetaV1WatchEvent();

  group('test IoK8sApimachineryPkgApisMetaV1WatchEvent', () {
    // RawExtension is used to hold extensions in external versions.  To use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.  // Internal package:   type MyAPIObject struct {   runtime.TypeMeta `json:\",inline\"`   MyPlugin runtime.Object `json:\"myPlugin\"`  }   type PluginA struct {   AOption string `json:\"aOption\"`  }  // External package:   type MyAPIObject struct {   runtime.TypeMeta `json:\",inline\"`   MyPlugin runtime.RawExtension `json:\"myPlugin\"`  }   type PluginA struct {   AOption string `json:\"aOption\"`  }  // On the wire, the JSON will look something like this:   {   \"kind\":\"MyAPIObject\",   \"apiVersion\":\"v1\",   \"myPlugin\": {    \"kind\":\"PluginA\",    \"aOption\":\"foo\",   },  }  So what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)
    // Object object
    test('to test the property `object`', () async {
      // TODO
    });

    // String type
    test('to test the property `type`', () async {
      // TODO
    });


  });

}
