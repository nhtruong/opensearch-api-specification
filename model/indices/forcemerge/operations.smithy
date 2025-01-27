// SPDX-License-Identifier: Apache-2.0
//
//  The OpenSearch Contributors require contributions made to
//  this file be licensed under the Apache-2.0 license or a
//  compatible open source license.

$version: "2"
namespace OpenSearch
use opensearch.openapi#vendorExtensions

// TODO: Fill in API Reference URL
@externalDocumentation(
    "API Reference": "https://opensearch.org/docs/latest"
)

@vendorExtensions(
    "x-operation-group": "indices.forcemerge",
    "x-version-added": "1.0",
)
@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/_forcemerge")
@documentation("Performs the force merge operation on one or more indices.")
operation IndicesForcemerge {
    input: IndicesForcemerge_Input,
    output: IndicesForcemerge_Output
}

@vendorExtensions(
    "x-operation-group": "indices.forcemerge",
    "x-version-added": "1.0",
)
@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/{index}/_forcemerge")
@documentation("Performs the force merge operation on one or more indices.")
operation IndicesForcemerge_WithIndex {
    input: IndicesForcemerge_WithIndex_Input,
    output: IndicesForcemerge_Output
}
