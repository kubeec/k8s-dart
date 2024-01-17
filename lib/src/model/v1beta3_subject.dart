//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1beta3_group_subject.dart';
import 'package:k8s/src/model/v1beta3_service_account_subject.dart';
import 'package:k8s/src/model/v1beta3_user_subject.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3Subject {
  /// Returns a new [V1beta3Subject] instance.
  V1beta3Subject({

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


  final V1beta3GroupSubject? group;



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


  final V1beta3ServiceAccountSubject? serviceAccount;



  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false
  )


  final V1beta3UserSubject? user;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3Subject &&
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

  factory V1beta3Subject.fromJson(Map<String, dynamic> json) => _$V1beta3SubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3SubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

