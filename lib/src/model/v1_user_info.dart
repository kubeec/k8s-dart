//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_user_info.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1UserInfo {
  /// Returns a new [V1UserInfo] instance.
  V1UserInfo({

     this.extra,

     this.groups,

     this.uid,

     this.username,
  });

      /// Any additional information provided by the authenticator.
  @JsonKey(
    
    name: r'extra',
    required: false,
    includeIfNull: false
  )


  final Map<String, List<String>>? extra;



      /// The names of groups this user is a part of.
  @JsonKey(
    
    name: r'groups',
    required: false,
    includeIfNull: false
  )


  final List<String>? groups;



      /// A unique value that identifies this user across time. If this user is deleted and another user by the same name is added, they will have different UIDs.
  @JsonKey(
    
    name: r'uid',
    required: false,
    includeIfNull: false
  )


  final String? uid;



      /// The name that uniquely identifies this user among all active users.
  @JsonKey(
    
    name: r'username',
    required: false,
    includeIfNull: false
  )


  final String? username;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1UserInfo &&
     other.extra == extra &&
     other.groups == groups &&
     other.uid == uid &&
     other.username == username;

  @override
  int get hashCode =>
    extra.hashCode +
    groups.hashCode +
    uid.hashCode +
    username.hashCode;

  factory V1UserInfo.fromJson(Map<String, dynamic> json) => _$V1UserInfoFromJson(json);

  Map<String, dynamic> toJson() => _$V1UserInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

