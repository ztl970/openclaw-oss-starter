# Publish Runbook

## Purpose

This runbook turns the knowledge-base pages into a structured input package for
automatic execution.

## Execution owner

- `xiaoguo` handles Feishu knowledge-base publishing and ongoing page updates.

## Required target fields

Before execution, fill:

- one root target:
  - `wiki_space`
  - or `wiki_node`
- the directory targets in
  [directory-rules.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/directory-rules.yaml)

in [publish-manifest.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/publish-manifest.yaml).

## Routing rule

Publishing must follow
[directory-rules.yaml](/Users/ztl/Documents/New project/marketing/feishu/knowledge-base/directory-rules.yaml).

`xiaoguo` should not guess where a page goes. Each page key must map to one
configured directory target before publishing.

## Publish order

1. 项目总览
2. 对外发布文案
3. 申请与介绍素材

## Expected result

- three created or updated Feishu pages
- one returned doc URL per page
- one short execution summary
