import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for OpenidApi
void main() {
  final instance = K8s().getOpenidApi();

  group(OpenidApi, () {
    // get service account issuer OpenID JSON Web Key Set (contains public token verification keys)
    //
    //Future<String> getServiceAccountIssuerOpenIDKeyset() async
    test('test getServiceAccountIssuerOpenIDKeyset', () async {
      // TODO
    });

  });
}
