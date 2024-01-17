//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_user_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta1_self_subject_review_status.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta1SelfSubjectReviewStatus {
  /// Returns a new [V1beta1SelfSubjectReviewStatus] instance.
  V1beta1SelfSubjectReviewStatus({

     this.userInfo,
  });

  @JsonKey(
    
    name: r'userInfo',
    required: false,
    includeIfNull: false
  )


  final V1UserInfo? userInfo;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta1SelfSubjectReviewStatus &&
     other.userInfo == userInfo;

  @override
  int get hashCode =>
    userInfo.hashCode;

  factory V1beta1SelfSubjectReviewStatus.fromJson(Map<String, dynamic> json) => _$V1beta1SelfSubjectReviewStatusFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta1SelfSubjectReviewStatusToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

