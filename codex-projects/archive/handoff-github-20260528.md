# GitHub 仓库维护与发布 Handoff — 20260528

## 说明

原 Codex 对话（4周，已归档）上下文已超长无法提取，本文件为重建占位记录。

---

## 涉及仓库

| 仓库 | 本地路径 |
|---|---|
| guoma970/kotovela-hub | `/Users/ztl/AI协作项目/kotovela/kotovela-hub` |
| guoma970/openclaw-kotovela | `/Users/ztl/AI协作项目/kotovela/kotovela-workbench` |
| guoma970/xiguo-companion-prototype | `/Users/ztl/AI协作项目/xiguo-companion` |
| guoma970/yanfami-platform-mvp | `/Users/ztl/AI协作项目/yanfami-platform` |
| guoma970/openclaw-oss-starter | `/Users/ztl/Documents/New project`（兼容路径） |

---

## 下次做 GitHub 维护时的标准流程

```bash
# 检查各仓库状态
for dir in \
  /Users/ztl/AI协作项目/kotovela/kotovela-hub \
  /Users/ztl/AI协作项目/xiguo-companion \
  /Users/ztl/AI协作项目/yanfami-platform \
  /Users/ztl/AI协作项目/openclaw-ops; do
  echo "=== $(basename $dir) ==="
  cd "$dir" && git log --oneline -3 && git status --short
done
```

## 风险或待确认点

- 原对话中是否有未完成的 PR / release / tag 操作，已无法从上下文恢复
- 建议下次开始 GitHub 维护任务时，先运行上方脚本确认各仓库当前状态，再判断需要补哪些操作
