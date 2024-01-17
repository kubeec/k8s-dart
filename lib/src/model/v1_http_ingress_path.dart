//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:k8s/src/model/v1_ingress_backend.dart';
import 'package:json_annotation/json_annotation.dart';

part 'v1_http_ingress_path.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1HTTPIngressPath {
  /// Returns a new [V1HTTPIngressPath] instance.
  V1HTTPIngressPath({

    required  this.backend,

     this.path,

    required  this.pathType,
  });

  @JsonKey(
    
    name: r'backend',
    required: true,
    includeIfNull: false
  )


  final V1IngressBackend backend;



      /// path is matched against the path of an incoming request. Currently it can contain characters disallowed from the conventional \"path\" part of a URL as defined by RFC 3986. Paths must begin with a '/' and must be present when using PathType with value \"Exact\" or \"Prefix\".
  @JsonKey(
    
    name: r'path',
    required: false,
    includeIfNull: false
  )


  final String? path;



      /// pathType determines the interpretation of the path matching. PathType can be one of the following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL path prefix split by '/'. Matching is   done on a path element by element basis. A path element refers is the   list of labels in the path split by the '/' separator. A request is a   match for path p if every p is an element-wise prefix of p of the   request path. Note that if the last element of the path is a substring   of the last element in request path, it is not a match (e.g. /foo/bar   matches /foo/bar/baz, but does not match /foo/barbaz). * ImplementationSpecific: Interpretation of the Path matching is up to   the IngressClass. Implementations can treat this as a separate PathType   or treat it identically to Prefix or Exact path types. Implementations are required to support all path types.
  @JsonKey(
    
    name: r'pathType',
    required: true,
    includeIfNull: false
  )


  final String pathType;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1HTTPIngressPath &&
     other.backend == backend &&
     other.path == path &&
     other.pathType == pathType;

  @override
  int get hashCode =>
    backend.hashCode +
    path.hashCode +
    pathType.hashCode;

  factory V1HTTPIngressPath.fromJson(Map<String, dynamic> json) => _$V1HTTPIngressPathFromJson(json);

  Map<String, dynamic> toJson() => _$V1HTTPIngressPathToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

