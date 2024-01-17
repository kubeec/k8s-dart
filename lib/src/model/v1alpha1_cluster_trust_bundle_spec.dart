//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:json_annotation/json_annotation.dart';

part 'v1alpha1_cluster_trust_bundle_spec.g.dart';


@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class V1alpha1ClusterTrustBundleSpec {
  /// Returns a new [V1alpha1ClusterTrustBundleSpec] instance.
  V1alpha1ClusterTrustBundleSpec({

     this.signerName,

    required  this.trustBundle,
  });

      /// signerName indicates the associated signer, if any.  In order to create or update a ClusterTrustBundle that sets signerName, you must have the following cluster-scoped permission: group=certificates.k8s.io resource=signers resourceName=<the signer name> verb=attest.  If signerName is not empty, then the ClusterTrustBundle object must be named with the signer name as a prefix (translating slashes to colons). For example, for the signer name `example.com/foo`, valid ClusterTrustBundle object names include `example.com:foo:abc` and `example.com:foo:v1`.  If signerName is empty, then the ClusterTrustBundle object's name must not have such a prefix.  List/watch requests for ClusterTrustBundles can filter on this field using a `spec.signerName=NAME` field selector.
  @JsonKey(
    
    name: r'signerName',
    required: false,
    includeIfNull: false
  )


  final String? signerName;



      /// trustBundle contains the individual X.509 trust anchors for this bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.  The data must consist only of PEM certificate blocks that parse as valid X.509 certificates.  Each certificate must include a basic constraints extension with the CA bit set.  The API server will reject objects that contain duplicate certificates, or that use PEM block headers.  Users of ClusterTrustBundles, including Kubelet, are free to reorder and deduplicate certificate blocks in this file according to their own logic, as well as to drop PEM block headers and inter-block data.
  @JsonKey(
    
    name: r'trustBundle',
    required: true,
    includeIfNull: false
  )


  final String trustBundle;



  @override
  bool operator ==(Object other) => identical(this, other) || other is V1alpha1ClusterTrustBundleSpec &&
     other.signerName == signerName &&
     other.trustBundle == trustBundle;

  @override
  int get hashCode =>
    signerName.hashCode +
    trustBundle.hashCode;

  factory V1alpha1ClusterTrustBundleSpec.fromJson(Map<String, dynamic> json) => _$V1alpha1ClusterTrustBundleSpecFromJson(json);

  Map<String, dynamic> toJson() => _$V1alpha1ClusterTrustBundleSpecToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

