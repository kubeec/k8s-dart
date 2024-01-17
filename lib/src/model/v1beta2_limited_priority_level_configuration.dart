//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_limit_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_limited_priority_level_configuration.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2LimitedPriorityLevelConfiguration {
  /// Returns a new [V1beta2LimitedPriorityLevelConfiguration] instance.
  V1beta2LimitedPriorityLevelConfiguration({

     this.assuredConcurrencyShares,

     this.borrowingLimitPercent,

     this.lendablePercent,

     this.limitResponse,
  });

      /// `assuredConcurrencyShares` (ACS) configures the execution limit, which is a limit on the number of requests of this priority level that may be exeucting at a given time.  ACS must be a positive number. The server's concurrency limit (SCL) is divided among the concurrency-controlled priority levels in proportion to their assured concurrency shares. This produces the assured concurrency value (ACV) --- the number of requests that may be executing at a time --- for each such priority level:              ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )  bigger numbers of ACS mean more reserved concurrent requests (at the expense of every other PL). This field has a default value of 30.
  @JsonKey(
    
    name: r'assuredConcurrencyShares',
    required: false,
    includeIfNull: false
  )


  final int? assuredConcurrencyShares;



      /// `borrowingLimitPercent`, if present, configures a limit on how many seats this priority level can borrow from other priority levels. The limit is known as this level's BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that this level may borrow at any one time. This field holds the ratio of that limit to the level's nominal concurrency limit. When this field is non-nil, it must hold a non-negative integer and the limit is calculated as follows.  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )  The value of this field can be more than 100, implying that this priority level can borrow a number of seats that is greater than its own nominal concurrency limit (NominalCL). When this field is left `nil`, the limit is effectively infinite.
  @JsonKey(
    
    name: r'borrowingLimitPercent',
    required: false,
    includeIfNull: false
  )


  final int? borrowingLimitPercent;



      /// `lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed by other priority levels. The value of this field must be between 0 and 100, inclusive, and it defaults to 0. The number of seats that other levels can borrow from this level, known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  @JsonKey(
    
    name: r'lendablePercent',
    required: false,
    includeIfNull: false
  )


  final int? lendablePercent;



  @JsonKey(
    
    name: r'limitResponse',
    required: false,
    includeIfNull: false
  )


  final V1beta2LimitResponse? limitResponse;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2LimitedPriorityLevelConfiguration &&
     other.assuredConcurrencyShares == assuredConcurrencyShares &&
     other.borrowingLimitPercent == borrowingLimitPercent &&
     other.lendablePercent == lendablePercent &&
     other.limitResponse == limitResponse;

  @override
  int get hashCode =>
    assuredConcurrencyShares.hashCode +
    borrowingLimitPercent.hashCode +
    lendablePercent.hashCode +
    limitResponse.hashCode;

  factory V1beta2LimitedPriorityLevelConfiguration.fromJson(Map<String, dynamic> json) => _$V1beta2LimitedPriorityLevelConfigurationFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2LimitedPriorityLevelConfigurationToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

