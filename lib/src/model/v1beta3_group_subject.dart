//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_group_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3GroupSubject {
  /// Returns a new [V1beta3GroupSubject] instance.
  V1beta3GroupSubject({

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
  bool operator ==(Object other) => identical(this, other) || other is V1beta3GroupSubject &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1beta3GroupSubject.fromJson(Map<String, dynamic> json) => _$V1beta3GroupSubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3GroupSubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

