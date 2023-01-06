import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiNetworkingV1HTTPIngressPath
void main() {
  final instance = IoK8sApiNetworkingV1HTTPIngressPathBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiNetworkingV1HTTPIngressPath, () {
    // IoK8sApiNetworkingV1IngressBackend backend
    test('to test the property `backend`', () async {
      // TODO
    });

    // Path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value \"Exact\" or \"Prefix\".
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // PathType determines the interpretation of the Path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is   done on a path element by element basis. A path element refers is the   list of labels in the path split by the '/' separator. A request is a   match for path p if every p is an element-wise prefix of p of the   request path. Note that if the last element of the path is a substring   of the last element in request path, it is not a match (e.g. /foo/bar   matches /foo/bar/baz, but does not match /foo/barbaz). * ImplementationSpecific: Interpretation of the Path matching is up to   the IngressClass. Implementations can treat this as a separate PathType   or treat it identically to Prefix or Exact path types. Implementations are required to support all path types.
    // String pathType
    test('to test the property `pathType`', () async {
      // TODO
    });

  });
}
