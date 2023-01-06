import 'package:test/test.dart';
import 'package:k8s/k8s.dart';

// tests for IoK8sApiBatchV1CronJobSpec
void main() {
  final instance = IoK8sApiBatchV1CronJobSpecBuilder();
  // TODO add properties to the builder and call build()

  group(IoK8sApiBatchV1CronJobSpec, () {
    // Specifies how to treat concurrent executions of a Job. Valid values are: - \"Allow\" (default): allows CronJobs to run concurrently; - \"Forbid\": forbids concurrent runs, skipping next run if previous run hasn't finished yet; - \"Replace\": cancels currently running job and replaces it with a new one  
    // String concurrencyPolicy
    test('to test the property `concurrencyPolicy`', () async {
      // TODO
    });

    // The number of failed finished jobs to retain. Value must be non-negative integer. Defaults to 1.
    // int failedJobsHistoryLimit
    test('to test the property `failedJobsHistoryLimit`', () async {
      // TODO
    });

    // IoK8sApiBatchV1JobTemplateSpec jobTemplate
    test('to test the property `jobTemplate`', () async {
      // TODO
    });

    // The schedule in Cron format, see https://en.wikipedia.org/wiki/Cron.
    // String schedule
    test('to test the property `schedule`', () async {
      // TODO
    });

    // Optional deadline in seconds for starting the job if it misses scheduled time for any reason.  Missed jobs executions will be counted as failed ones.
    // int startingDeadlineSeconds
    test('to test the property `startingDeadlineSeconds`', () async {
      // TODO
    });

    // The number of successful finished jobs to retain. Value must be non-negative integer. Defaults to 3.
    // int successfulJobsHistoryLimit
    test('to test the property `successfulJobsHistoryLimit`', () async {
      // TODO
    });

    // This flag tells the controller to suspend subsequent executions, it does not apply to already started executions.  Defaults to false.
    // bool suspend
    test('to test the property `suspend`', () async {
      // TODO
    });

    // The time zone name for the given schedule, see https://en.wikipedia.org/wiki/List_of_tz_database_time_zones. If not specified, this will default to the time zone of the kube-controller-manager process. The set of valid time zone names and the time zone offset is loaded from the system-wide time zone database by the API server during CronJob validation and the controller manager during execution. If no system-wide time zone database can be found a bundled version of the database is used instead. If the time zone name becomes invalid during the lifetime of a CronJob or due to a change in host configuration, the controller will stop creating new new Jobs and will create a system event with the reason UnknownTimeZone. More information can be found in https://kubernetes.io/docs/concepts/workloads/controllers/cron-jobs/#time-zones This is beta field and must be enabled via the `CronJobTimeZone` feature gate.
    // String timeZone
    test('to test the property `timeZone`', () async {
      // TODO
    });

  });
}
