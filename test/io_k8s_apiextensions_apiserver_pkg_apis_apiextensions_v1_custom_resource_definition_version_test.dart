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

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion
void main() {
  // final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion();

  group('test IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionVersion', () {
    // additionalPrinterColumns specifies additional columns returned in Table output. See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details. If no columns are specified, a single column displaying the age of the custom resource is used.
    // List<IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition> additionalPrinterColumns (default value: const [])
    test('to test the property `additionalPrinterColumns`', () async {
      // TODO
    });

    // deprecated indicates this version of the custom resource API is deprecated. When set to true, API requests to this version receive a warning header in the server response. Defaults to false.
    // bool deprecated
    test('to test the property `deprecated`', () async {
      // TODO
    });

    // deprecationWarning overrides the default warning returned to API clients. May only be set when `deprecated` is true. The default warning indicates this version is deprecated and recommends use of the newest served version of equal or greater stability, if one exists.
    // String deprecationWarning
    test('to test the property `deprecationWarning`', () async {
      // TODO
    });

    // name is the version name, e.g. “v1”, “v2beta1”, etc. The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceValidation schema
    test('to test the property `schema`', () async {
      // TODO
    });

    // served is a flag enabling/disabling this version from being served via REST APIs
    // bool served
    test('to test the property `served`', () async {
      // TODO
    });

    // storage indicates this version should be used when persisting custom resources to storage. There must be exactly one version with storage=true.
    // bool storage
    test('to test the property `storage`', () async {
      // TODO
    });

    // IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresources subresources
    test('to test the property `subresources`', () async {
      // TODO
    });


  });

}
