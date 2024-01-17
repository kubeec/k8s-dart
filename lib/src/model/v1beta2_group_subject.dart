//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta2_group_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta2GroupSubject {
  /// Returns a new [V1beta2GroupSubject] instance.
  V1beta2GroupSubject({

    required  this.name,
  });

      /// name is the user group that matches, or \"*\" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta2GroupSubject &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1beta2GroupSubject.fromJson(Map<String, dynamic> json) => _$V1beta2GroupSubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta2GroupSubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

