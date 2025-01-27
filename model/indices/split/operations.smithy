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
    "x-operation-group": "indices.split",
    "x-version-added": "1.0",
)
@idempotent
@suppress(["HttpUriConflict"])
@http(method: "PUT", uri: "/{index}/_split/{target}")
@documentation("Allows you to split an existing index into a new index with more primary shards.")
operation IndicesSplit_Put {
    input: IndicesSplit_Put_Input,
    output: IndicesSplit_Output
}

@vendorExtensions(
    "x-operation-group": "indices.split",
    "x-version-added": "1.0",
)
@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/{index}/_split/{target}")
@documentation("Allows you to split an existing index into a new index with more primary shards.")
operation IndicesSplit_Post {
    input: IndicesSplit_Post_Input,
    output: IndicesSplit_Output
}
