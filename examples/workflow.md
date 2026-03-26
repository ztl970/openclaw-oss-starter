# Example Workflow

This example shows a small, public-safe local workflow that fits the repository
layout.

## Scenario

You want to keep a local AI workspace organized with a clear boundary between:

- routing rules
- release notes
- private runtime state
- reusable shell helpers

## Steps

1. Read the generic instance layout in `references/instances.md`.
2. Review `skills/mac-multi-instance-deployment/` for the deployment skill.
3. Run `./validate_repo.sh` to verify the public-safe file set.
4. Run `./generate_public_pack.sh` to produce a release-ready bundle.
5. If Codex quota is low, use `./cron/codex_quota_autoswitch.sh`.
6. Or run `bash ./examples/pack_and_validate.sh` for the combined flow.

## Expected result

- public files stay in version control
- private runtime state stays local
- release artifacts are created in `dist/`
