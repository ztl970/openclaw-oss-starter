# Handoff · OpenClaw 系统运营 · 2026-06-08

> 项目路径：`/Users/ztl/AI协作项目/openclaw-ops`
> 读完此文件即可开工。旧 handoff 已归档至 `codex-projects/archive/`。

---

## 当前状态

- **分支：** `main`（已与 origin/main 同步，divergence 已于 2026-06-08 修复 ✅）
- **Staged：** `marketing/feishu/knowledge-base/18-feishu-sync-receipt-log.md`（自动合并，待决定是否 commit）
- **Untracked：** `3d_models/`、`book_image_work/`、`codex-projects/`、`STATUS.md`、`DUAL-PATH-EXIT-PLAN.md`、`OPENCLAW-UPDATE-20260528.md`、`display-color-check.html`、`edge-glow-check.html`、`marketing/feishu/2026-04-0*-handoff.md`（×5）

---

## 下一步

1. [ ] 决定 staged 文件：审阅 `18-feishu-sync-receipt-log.md` 内容，确认提交或 restore
2. [ ] 确认 `marketing/feishu/knowledge-base/` 各文件内容正确（公开脱敏版本，无私有路径）
3. [ ] 决定 untracked 文件归宿：`3d_models/`、`book_image_work/` 是否纳入仓库；`STATUS.md` 建议纳入

---

## 注意事项

- ⚠️ 这是**公开仓库**（`guoma970/openclaw-oss-starter`），所有提交内容不能含真实路径、飞书链接、私有 ID
- `marketing/feishu/knowledge-base/` 中的路径须保持占位符格式（`/Users/<your-user>/...`、`<FEISHU_PARENT_NODE_TOKEN>`）
- LaunchAgent / PM2 相关修改：先诊断再操作，不要改旧兼容路径
