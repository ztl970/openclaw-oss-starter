## 目标

检查 `/Users/ztl/AI协作项目/openclaw-ops` 当前项目状态，并沉淀一份可交接的 handoff。当前只做状态整理和记录，不修改既有业务文件、不回滚任何现有工作区变更。

## 项目路径

- 当前项目根目录：`/Users/ztl/AI协作项目/openclaw-ops`
- Handoff 文件：`/Users/ztl/AI协作项目/openclaw-ops/codex-projects/handoff-openclaw-ops-20260528.md`
- 当前分支状态：`main...origin/main [ahead 1, behind 16]`
- 工作区状态：存在未提交修改与未跟踪文件，后续操作前建议先确认哪些属于当前有效工作。

## 最近操作记录

按要求执行的命令：

```bash
cd /Users/ztl/AI协作项目/openclaw-ops
git log --oneline -10 2>/dev/null || echo "no git"
ls scripts/ cron/ config/ skills/ 2>/dev/null
```

最近 10 条 git 提交：

```text
5f5403a docs: align repo growth operator status
3d9f18f Merge pull request #27 from guoma970/codex/feishu-default-sync-hardening
bd331d1 Clarify default Feishu sync executor
35213fd Merge pull request #26 from guoma970/codex/guoma970-identity-sync
8c53d35 Sync public GitHub identity to guoma970
95926ad docs: prepare repo growth operator release pack
a524fb8 Move publishing content under media
e4919f1 Add content publishing group pack
7317f56 Merge pull request #25 from ztl970/codex/v0-1-9-release
0ba7221 Prepare v0.1.9 release
```

关键目录列举结果：

```text
config/:
README.md
local-multi-instance.example.env
main-project-registry.example.yaml
main-project-registry.local.yaml
openclaw-feishu-group-routing.yaml

cron/:
codex_quota_autoswitch.sh

scripts/:
vertex

skills/:
community-reply-helper
cross-post-adapter
daily-task-checkin
family-homework-pomodoro
feishu-knowledge-base-publisher
feishu-marketing-publisher
launch-announcement
mac-multi-instance-deployment
marketing-post-generator
openclaw-vertex-credit-safe-setup
practice-session-checkin
repo-growth-operator
```

补充检查：

```text
git status --short --branch
## main...origin/main [ahead 1, behind 16]
 M config/main-project-registry.example.yaml
 M marketing/feishu/knowledge-base/12-command-library.md
 M marketing/feishu/knowledge-base/17-blocker-and-exception-rules.md
 M marketing/feishu/knowledge-base/18-feishu-sync-receipt-log.md
 M marketing/feishu/knowledge-base/37-main-takeover-readiness-checklist.md
 M marketing/feishu/knowledge-base/38-official-group-activation-plan.md
 M marketing/feishu/knowledge-base/46-official-group-default-context-rule.md
 M marketing/feishu/knowledge-base/MAIN_CHAT_COMMANDS.md
 M marketing/feishu/knowledge-base/MAIN_GITHUB_RESPONSIBILITIES.md
 M marketing/feishu/knowledge-base/MAIN_NEW_SKILL_FLOW.md
 M marketing/feishu/knowledge-base/MAIN_PROJECT_CONTEXT.md
 M marketing/feishu/knowledge-base/MAIN_ROUTING_RULES.md
 M marketing/feishu/knowledge-base/preflight-checklist.md
 M marketing/feishu/knowledge-base/publish-runbook.md
 M marketing/feishu/knowledge-base/run_media_sync.sh
 M marketing/feishu/knowledge-base/run_xiaoguo_sync.sh
 M marketing/github/github-maintenance-handover.md
?? 3d_models/
?? STATUS.md
?? book_image_work/
?? codex-projects/
?? display-color-check.html
?? edge-glow-check.html
?? marketing/feishu/2026-04-08-main-daily-check-sync-handoff.md
?? marketing/feishu/2026-04-09-main-daily-check-sync-handoff.md
?? marketing/feishu/2026-04-10-main-daily-check-sync-handoff.md
?? marketing/feishu/2026-04-11-main-daily-check-sync-handoff.md
?? marketing/feishu/2026-04-12-main-daily-check-sync-handoff.md
```

## 当前目录结构

顶层结构摘要：

```text
.
.claude
.git
3d_models
assets
book_image_work
codex-projects
config
cron
dist
examples
marketing
proactive-fix-20260323
references
releases
scripts
skills
```

主要顶层文件：

```text
.gitignore
CHANGELOG.md
CONTRIBUTING.md
INSTALL.md
LICENSE
README.md
RELEASES.md
SECURITY.md
SKILL.md
STATUS.md
generate_public_pack.sh
validate_repo.sh
display-color-check.html
edge-glow-check.html
```

当前项目看起来同时承载：

- OpenClaw ops / starter pack 相关文档与发布包：`README.md`、`SKILL.md`、`releases/`、`dist/`、`generate_public_pack.sh`、`validate_repo.sh`
- 配置与自动化：`config/`、`cron/`、`scripts/vertex`
- 可复用技能包：`skills/`
- 营销、飞书、GitHub、内容分发资料：`marketing/`
- 历史主动修复材料：`proactive-fix-20260323/`
- 当前新增或待归档材料：`3d_models/`、`book_image_work/`、`codex-projects/`、显示检查 HTML 文件等

## 下一步

1. 先确认当前本地 `main` 的 ahead 1 是否要保留、推送、迁移到功能分支，还是与远端 16 个提交做 rebase/merge。
2. 对 `git status` 中的修改逐组归类：配置类、飞书知识库类、脚本类、GitHub handover 类、未跟踪归档类。
3. 在同步远端前，避免直接 `git pull` 覆盖语义；建议先 `git fetch`，再检查 `git log --oneline --left-right --graph main...origin/main`。
4. 对 `codex-projects/`、`STATUS.md`、`3d_models/`、`book_image_work/` 等未跟踪内容，决定是否纳入仓库、移到更合适项目，或加入忽略规则。
5. 如后续要做 OpenClaw 运行态诊断，再单独执行 runtime 检查，例如 `openclaw models status`、`openclaw status --deep`、`openclaw channels status --probe`。

## 风险或待确认点

- 本地 `main` 与 `origin/main` 已经分叉：ahead 1 / behind 16，直接 pull 或 push 都需要先判断意图。
- 工作区已有大量修改和未跟踪文件，本 handoff 未判断这些变更的作者、来源或业务正确性。
- `config/main-project-registry.example.yaml` 是配置示例文件，当前已修改，合并前应确认是否包含本地化内容或应公开的默认值。
- `marketing/feishu/knowledge-base/` 下多份知识库文件已修改，可能涉及飞书同步口径或主群规则，需要按实际运营状态复核。
- `codex-projects/` 当前未被 git 跟踪；本 handoff 文件也会处于未跟踪目录内，若要长期保留需后续显式纳入版本管理。
- 本次未执行 OpenClaw runtime probe，因此没有确认当前 gateway、模型、账号额度或飞书通道实时状态。
