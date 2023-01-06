import 'package:k8s/k8s.dart';

Future<void> main() async {
  final k8s = new K8s(basePathOverride: "http://127.0.0.1:8001");
  k8s.setBearerAuth("token", "YOUR_ACCESS_TOKEN");

  try {
    final response = await k8s.getVersionApi().getCodeVersion();
    print(response.data?.gitVersion);
  } catch (e) {
    print('Exception when calling VersionApi->getCodeVersion: $e\n');
  }
}
