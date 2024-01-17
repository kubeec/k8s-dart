//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta2_service_account_subject.dart';
import 'package:k8s/src/model/v1beta2_group_subject.dart';
import 'package:k8s/src/model/v1beta2_user_subject.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2Subject {
  /// Returns a new [V1beta2Subject] instance.
  V1beta2Subject({

     this.group,

    required  this.kind,

     this.serviceAccount,

     this.user,
  });

  @JsonKey(
    
    name: r'group',
    required: false,
    includeIfNull: false
  )


  final V1beta2GroupSubject? group;



      /// `kind` indicates which one of the other fields is non-empty. Required
  @JsonKey(
    
    name: r'kind',
    required: true,
    includeIfNull: false
  )


  final String kind;



  @JsonKey(
    
    name: r'serviceAccount',
    required: false,
    includeIfNull: false
  )


  final V1beta2ServiceAccountSubject? serviceAccount;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final V1beta2UserSubject? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2Subject &&
     other.group == group &&
     other.kind == kind &&
     other.serviceAccount == serviceAccount &&
     other.user == user;

  @override
  int get hashCode =>
    group.hashCode +
    kind.hashCode +
    serviceAccount.hashCode +
    user.hashCode;

  factory V1beta2Subject.fromJson(Map<String, dynamic> json) => _$V1beta2SubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2SubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

