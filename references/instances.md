# Mac Multi-Instance Layout

This file defines a generic, public-safe instance map for a Mac-based
multi-instance workspace.

## Layout

| Instance | Purpose | Notes |
|---|---|---|
| `main` | routing and shared indexes | keep narrow; do not use as a catch-all execution area |
| `workbench` | active work and short-lived experiments | use for drafting, testing, and iteration |
| `publish` | release-ready output | keep public-safe files only |
| `archive` | read-only snapshots | use for historical reference material |
| `private` | local-only state | secrets and runtime data stay here only |

## Rules

- one instance per workspace root
- shared docs can be public-safe
- runtime state stays local
- private files never enter public packs

## Suggested Use

- `main` for routing notes and shared indexes
- `workbench` for active editing and experiments
- `publish` for validated release bundles
- `archive` for old snapshots and references
- `private` for secrets, credentials, and local runtime state
