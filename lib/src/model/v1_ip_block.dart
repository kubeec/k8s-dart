//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_ip_block.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1IPBlock {
  /// Returns a new [V1IPBlock] instance.
  V1IPBlock({

    required  this.cidr,

     this.except,
  });

      /// cidr is a string representing the IPBlock Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\"
  @JsonKey(
    
    name: r'cidr',
    required: true,
    includeIfNull: false
  )


  final String cidr;



      /// except is a slice of CIDRs that should not be included within an IPBlock Valid examples are \"192.168.1.0/24\" or \"2001:db8::/64\" Except values will be rejected if they are outside the cidr range
  @JsonKey(
    
    name: r'except',
    required: false,
    includeIfNull: false
  )


  final List<String>? except;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1IPBlock &&
     other.cidr == cidr &&
     other.except == except;

  @override
  int get hashCode =>
    cidr.hashCode +
    except.hashCode;

  factory V1IPBlock.fromJson(Map<String, dynamic> json) => _$V1IPBlockFromJson(json);

  Map<String, dynamic> toJson() => _$V1IPBlockToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

