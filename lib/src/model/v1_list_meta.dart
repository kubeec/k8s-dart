//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1_list_meta.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1ListMeta {
  /// Returns a new [V1ListMeta] instance.
  V1ListMeta({

     this.continue_,

     this.remainingItemCount,

     this.resourceVersion,

     this.selfLink,
  });

      /// continue may be set if the user set a limit on the number of items returned, and indicates that the server has more data available. The value is opaque and may be used to issue another request to the endpoint that served this list to retrieve the next set of available objects. Continuing a consistent list may not be possible if the server configuration has changed or more than a few minutes have passed. The resourceVersion field returned when using this continue value will be identical to the value in the first response, unless you have received this token from an error message.
  @JsonKey(
    
    name: r'continue',
    required: false,
    includeIfNull: false
  )


  final String? continue_;



      /// remainingItemCount is the number of subsequent items in the list which are not included in this list response. If the list request contained label or field selectors, then the number of remaining items is unknown and the field will be left unset and omitted during serialization. If the list is complete (either because it is not chunking or because this is the last chunk), then there are no more remaining items and this field will be left unset and omitted during serialization. Servers older than v1.15 do not set this field. The intended use of the remainingItemCount is *estimating* the size of a collection. Clients should not rely on the remainingItemCount to be set or to be exact.
  @JsonKey(
    
    name: r'remainingItemCount',
    required: false,
    includeIfNull: false
  )


  final int? remainingItemCount;



      /// String that identifies the server's internal version of this object that can be used by clients to determine when objects have changed. Value must be treated as opaque by clients and passed unmodified back to the server. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  @JsonKey(
    
    name: r'resourceVersion',
    required: false,
    includeIfNull: false
  )


  final String? resourceVersion;



      /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  @JsonKey(
    
    name: r'selfLink',
    required: false,
    includeIfNull: false
  )


  final String? selfLink;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1ListMeta &&
     other.continue_ == continue_ &&
     other.remainingItemCount == remainingItemCount &&
     other.resourceVersion == resourceVersion &&
     other.selfLink == selfLink;

  @override
  int get hashCode =>
    continue_.hashCode +
    remainingItemCount.hashCode +
    resourceVersion.hashCode +
    selfLink.hashCode;

  factory V1ListMeta.fromJson(Map<String, dynamic> json) => _$V1ListMetaFromJson(json);

  Map<String, dynamic> toJson() => _$V1ListMetaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

