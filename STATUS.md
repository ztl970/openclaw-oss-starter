# OpenClaw 系统运营 — 当前状态

> 任何 AI 工具完成一项工作后，更新本文件对应字段。

---

## 总体状态

- **阶段：** 运营维护中
- **最后更新：** 2026-06-08
- **更新来源：** Claude (Cowork) — git 分叉修复

---

## 包含内容

- OpenClaw 系统运营文档与脚本
- 公开安全资产（3d_models、assets、examples）
- skills 技能库
- codex-projects 任务记录

---

## 当前任务状态

- **当前分支：** `main`（已与 origin/main 同步 ✅，2026-06-08 修复）
- **最近完成：** ✅ git 分叉修复（rebase --skip 旧本地 commit，remote 16 commits 已拉取；public-safe 脱敏版本保留）；handoff 更新至 `codex-projects/handoff-openclaw-ops-2026-06-08.md`
- **下一步：** 1）决定 staged 文件 `18-feishu-sync-receipt-log.md` 是否提交；2）确认 `marketing/feishu/knowledge-base/` 内容正确；3）决定 `3d_models/`、`book_image_work/`、`codex-projects/` 是否纳入仓库
- **阻塞点：** 无

---

## 待确认事项

- [x] Codex 从"OpenClaw 系统运维"写入 handoff → `codex-projects/handoff-openclaw-ops-20260528.md` ✅
- [x] Codex 从"GitHub 仓库维护与发布"写入 handoff → `codex-projects/handoff-github-20260528.md` ✅（占位，原对话上下文已丢失）
- [x] main 与 origin/main 分叉 → 已修复（2026-06-08）✅
- [ ] `marketing/feishu/knowledge-base/` 多份修改是否需要提交？

---

## AI 工具分工

| 工具 | 职责 |
|---|---|
| **Codex** | 系统维护执行、GitHub 发布 |
| **Claude (Cowork)** | 运营决策、跨项目协调、技能管理 |
| **OpenClaw** | 本身就是这个目录管理的系统 |
| **飞书** | 团队通知与沟通出口 |
