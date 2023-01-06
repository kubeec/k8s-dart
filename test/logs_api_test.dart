import 'package:test/test.dart';
import 'package:k8s/k8s.dart';


/// tests for LogsApi
void main() {
  final instance = K8s().getLogsApi();

  group(LogsApi, () {
    //Future logFileHandler(String logpath) async
    test('test logFileHandler', () async {
      // TODO
    });

    //Future logFileListHandler() async
    test('test logFileListHandler', () async {
      // TODO
    });

  });
}
