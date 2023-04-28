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
    "x-operation-group": "cat.thread_pool",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_cat/thread_pool")
@documentation("Returns cluster-wide thread pool statistics per node.
By default the active, queue and rejected statistics are returned for all thread pools.")
operation CatThreadPool {
    input: CatThreadPool_Input,
    output: CatThreadPool_Output
}

@vendorExtensions(
    "x-operation-group": "cat.thread_pool",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_cat/thread_pool/{thread_pool_patterns}")
@documentation("Returns cluster-wide thread pool statistics per node.
By default the active, queue and rejected statistics are returned for all thread pools.")
operation CatThreadPool_WithThreadPoolPatterns {
    input: CatThreadPool_WithThreadPoolPatterns_Input,
    output: CatThreadPool_Output
}
