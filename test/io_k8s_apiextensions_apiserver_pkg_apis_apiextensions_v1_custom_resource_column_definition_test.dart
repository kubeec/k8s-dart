import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinitionBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceColumnDefinition, () {
    // description is a human readable description of this column.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
    // String format
    test('to test the property `format`', () async {
      // TODO
    });

    // jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
    // String jsonPath
    test('to test the property `jsonPath`', () async {
      // TODO
    });

    // name is a human readable name for the column.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
    // int priority
    test('to test the property `priority`', () async {
      // TODO
    });

    // type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

  });
}
