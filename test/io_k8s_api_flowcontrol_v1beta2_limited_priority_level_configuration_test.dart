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

// tests for IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration
void main() {
  // final instance = IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration();

  group('test IoK8sApiFlowcontrolV1beta2LimitedPriorityLevelConfiguration', () {
    // `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:              ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )  bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
    // int assuredConcurrencyShares
    test('to test the property `assuredConcurrencyShares`', () async {
      // TODO
    });

    // `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )  The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
    // int borrowingLimitPercent
    test('to test the property `borrowingLimitPercent`', () async {
      // TODO
    });

    // `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
    // int lendablePercent
    test('to test the property `lendablePercent`', () async {
      // TODO
    });

    // IoK8sApiFlowcontrolV1beta2LimitResponse limitResponse
    test('to test the property `limitResponse`', () async {
      // TODO
    });


  });

}
