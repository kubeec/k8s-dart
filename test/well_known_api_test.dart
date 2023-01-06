import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for WellKnownApi
void main() {
  final instance = K8s().getWellKnownApi();

  group(WellKnownApi, () {
    // get service account issuer OpenID configuration, also known as the 'OIDC discovery doc'
    //
    //Future<String> getServiceAccountIssuerOpenIDConfiguration() async
    test('test getServiceAccountIssuerOpenIDConfiguration', () async {
      // TODO
    });

  });
}
