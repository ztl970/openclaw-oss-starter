# Setup Example

Use a generic Mac instance layout like this:

- `main` for shared routing and indexes
- `workbench` for active drafting and testing
- `publish` for release-ready output
- `archive` for read-only snapshots
- `private` for local-only state

Example env values:

```bash
OPENCLAW_WORKSPACE_MAIN=/Users/ztl/01-main
OPENCLAW_WORKSPACE_WORKBENCH=/Users/ztl/02-workbench
OPENCLAW_WORKSPACE_PUBLISH=/Users/ztl/03-publish
OPENCLAW_WORKSPACE_ARCHIVE=/Users/ztl/04-archive
OPENCLAW_WORKSPACE_PRIVATE=/Users/ztl/05-private
```

After setting the paths, update `references/instances.md` so the names and
roles match the same generic layout.

