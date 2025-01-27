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
    "x-operation-group": "render_search_template",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_render/template")
@documentation("Allows to use the Mustache language to pre-render a search definition.")
operation RenderSearchTemplate_Get {
    input: RenderSearchTemplate_Get_Input,
    output: RenderSearchTemplate_Output
}

@vendorExtensions(
    "x-operation-group": "render_search_template",
    "x-version-added": "1.0",
)
@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/_render/template")
@documentation("Allows to use the Mustache language to pre-render a search definition.")
operation RenderSearchTemplate_Post {
    input: RenderSearchTemplate_Post_Input,
    output: RenderSearchTemplate_Output
}

@vendorExtensions(
    "x-operation-group": "render_search_template",
    "x-version-added": "1.0",
)
@readonly
@suppress(["HttpUriConflict"])
@http(method: "GET", uri: "/_render/template/{id}")
@documentation("Allows to use the Mustache language to pre-render a search definition.")
operation RenderSearchTemplate_Get_WithId {
    input: RenderSearchTemplate_Get_WithId_Input,
    output: RenderSearchTemplate_Output
}

@vendorExtensions(
    "x-operation-group": "render_search_template",
    "x-version-added": "1.0",
)
@suppress(["HttpUriConflict"])
@http(method: "POST", uri: "/_render/template/{id}")
@documentation("Allows to use the Mustache language to pre-render a search definition.")
operation RenderSearchTemplate_Post_WithId {
    input: RenderSearchTemplate_Post_WithId_Input,
    output: RenderSearchTemplate_Output
}
