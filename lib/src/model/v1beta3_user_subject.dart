//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1beta3_user_subject.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1beta3UserSubject {
  /// Returns a new [V1beta3UserSubject] instance.
  V1beta3UserSubject({

    required  this.name,
  });

      /// `name` is the username that matches, or \"*\" to match all usernames. Required.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false
  )


  final String name;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1beta3UserSubject &&
     other.name == name;

  @override
  int get hashCode =>
    name.hashCode;

  factory V1beta3UserSubject.fromJson(Map<String, dynamic> json) => _$V1beta3UserSubjectFromJson(json);

  Map<String, dynamic> toJson() => _$V1beta3UserSubjectToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

