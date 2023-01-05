import 'package:k8s/api.dart';

Future<void> main() async {
  final versionApi = VersionApi();

  try {
    final versionInfo = await versionApi.getCodeVersion();
    print(versionInfo?.gitVersion);
  } catch (e) {
    print('Exception when calling VersionApi->getCodeVersion: $e\n');
  }
}
