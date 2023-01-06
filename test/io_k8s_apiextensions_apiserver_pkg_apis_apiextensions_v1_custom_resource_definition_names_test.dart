import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames
void main() {
  final instance = IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNamesBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiextensionsApiserverPkgApisApiextensionsV1CustomResourceDefinitionNames, () {
    // categories is a list of grouped resources this custom resource belongs to (e.g. 'all'). This is published in API discovery documents, and used by clients to support invocations like `kubectl get all`.
    // BuiltList<String> categories
    test('to test the property `categories`', () async {
      // TODO
    });

    // kind is the serialized kind of the resource. It is normally CamelCase and singular. Custom resource instances will use this value as the `kind` attribute in API calls.
    // String kind
    test('to test the property `kind`', () async {
      // TODO
    });

    // listKind is the serialized kind of the list for this resource. Defaults to \"`kind`List\".
    // String listKind
    test('to test the property `listKind`', () async {
      // TODO
    });

    // plural is the plural name of the resource to serve. The custom resources are served under `/apis/<group>/<version>/.../<plural>`. Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`). Must be all lowercase.
    // String plural
    test('to test the property `plural`', () async {
      // TODO
    });

    // shortNames are short names for the resource, exposed in API discovery documents, and used by clients to support invocations like `kubectl get <shortname>`. It must be all lowercase.
    // BuiltList<String> shortNames
    test('to test the property `shortNames`', () async {
      // TODO
    });

    // singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
    // String singular
    test('to test the property `singular`', () async {
      // TODO
    });

  });
}
