# Codex 项目入口

更新时间：2026-05-27

目的：把当前长期并行开发的上下文拆成独立项目入口，避免羲果陪伴、KotovelaHub、Yanfami、OpenClaw 运维和 renovation-book / 装修书稿混在同一个长对话里。

原则：这里的“项目”不是按一个 Git 仓库来分，而是按长期协作上下文来分。只要需要不同 AI 工具协作、不同文件归属、不同验收方式，就应该独立成项目。

统一入口：

```text
/Users/ztl/AI协作项目
```

迁移说明：

```text
/Users/ztl/AI协作项目/README.md
/Users/ztl/AI协作项目/无损迁移手册.md
```

## 1. 羲果陪伴

Codex App 入口标签：羲果陪伴

Workspace root：

```text
/Users/ztl/AI协作项目/xiguo-companion
```

适用范围：

- 小朋友端 UI、家长端、学习闭环、任务派发、AI 陪伴页。
- `xiguo.kotovela.com` 生产/预览验证。
- 小彩对话、儿童可见作业回复边界。

默认验证：

```bash
/Users/ztl/.openclaw/bin/xiguo-companion-verify all
```

注意：

- 涉及儿童可见作业/算术时，只给引导思路，不直接给最终答案。
- 做 UI 收敛时优先最小改动；如果有阶段门禁，例如 `T1 Discovery 后停下等审查`，必须停。
- hosted 状态、local dirty 状态、Preview auth 状态要分开判断。

## 2. KotovelaHub

Codex App 入口标签：KotovelaHub

Workspace root：

```text
/Users/ztl/AI协作项目/kotovela/kotovela-hub
```

关联仓库：

```text
/Users/ztl/AI协作项目/kotovela/kotovela-workbench
/Users/ztl/AI协作项目/kotovela/kotovela-workbench-sync
```

适用范围：

- KotovelaHub 内部页面、office instances、snapshot/live source、LaunchAgent、readonly gateway。
- Hub 鉴权、office bridge、工作台同步链路。

优先诊断：

```bash
launchctl list | grep -i kotovela
git status --short
git branch --show-current
```

注意：

- 看见 `source=snapshot` 时，先区分文件 provenance 和 server live/snapshot 选择逻辑。
- 诊断导出脚本时优先复制到 `/tmp` 跑，避免直接改写 repo 内 snapshot。
- 鉴权 401/403 与 exporter/live-source 要分开判断。

## 3. Yanfami 平台

Codex App 入口标签：Yanfami 平台

Workspace root：

```text
/Users/ztl/AI协作项目/yanfami-platform
```

适用范围：

- yanfami platform MVP、vault library、source-status/export、orphan/local-only 统计。
- 资源库索引、报告输出、模块匹配。

优先检查：

```bash
git status --short
git branch --show-current
```

关键文件：

```text
code/public/yanfami-vault-library-index.json
```

注意：

- 先看真实 repo 状态和生成 index，再判断 source-status 是否完成。
- 关注 `orphan_source_count`、`local_only_source_count`、`orphans`、`local_only`、`source_status`。
- 如果 repo dirty 很大，先诊断范围，不急着清理。

## 4. OpenClaw 系统运营

Codex App 入口标签：OpenClaw 系统运营

Workspace root：

```text
/Users/ztl/AI协作项目/openclaw-ops
```

运行时重点：

```text
/Users/ztl/.openclaw
/Users/ztl/.openclaw/bin
/Users/ztl/.openclaw/openclaw.json
```

适用范围：

- OpenClaw 模型路由、账号/额度、main/builder 绑定、Feishu 投递、cron、readonly healthcheck。
- 本机工作流和跨工具分工。

优先诊断：

```bash
/Users/ztl/.openclaw/bin/openclaw models status
/Users/ztl/.openclaw/bin/openclaw status --deep
/Users/ztl/.openclaw/bin/openclaw channels status --probe
```

注意：

- 修改模型绑定前先读当前 runtime，保护其他实例。
- `openclaw-healthcheck-readonly` 报 `openclaw: command not found` 时，先按 wrapper/PATH 问题处理。
- Feishu 已读不回要分清 queued、reply、visible delivery 三层。

## 5. renovation-book / 装修书稿

Codex App 入口标签：renovation-book 或 装修书稿

Workspace root：

```text
/Users/ztl/AI协作项目/renovation-book
```

适用范围：

- 书稿主线、章节精修、作者口径保护、去 AI 味、钩子篇检查。
- 配图任务、AI-02 / AI-03 prompt 包、Canva/Figma 后期加中文标签。
- Claude / WorkBuddy / 小果飞书 / Codex 的多人协作交接。

关键边界：

```text
00_项目管理/_书籍精修_skill/
01_主稿_V4.3_MD/
03_单章上传包/
04_2026居住觉醒_转译层/
06_绘图执行_2026-05-16/
07_V4.3.2_全书精修稿/
```

注意：

- 作者立场保护优先，不做无边界全文重写。
- 外部模型只做 bounded review / 转译 / 视觉提示，不直接覆盖 canonical draft。
- 配图保持 HTML-first，图像模型不负责渲染中文正文；中文标签后期放 Canva/Figma。
- WorkBuddy 输出、Claude 返回稿、Codex 本地整理稿必须分文件夹保存。

## 多 AI 协作文件原则

建议每个长期项目都保留三类文件：

```text
00_project-control/
01_source-or-canonical/
02_ai-working/
```

含义：

- `00_project-control/`：项目规则、协作分工、验收标准、handoff 模板。
- `01_source-or-canonical/`：主稿、真实数据、不可随意覆盖的权威文件。
- `02_ai-working/`：Claude / Codex / 小果 / WorkBuddy 等工具的中间稿和返回稿。

如果项目已经有自己的目录体系，优先使用原体系，不强行改名。关键是把“权威源文件”和“AI 中间输出”分开。

## 使用方式

新开 Codex 线程时：

1. 先选择对应项目标签。
2. 第一条消息只写当前任务，不再混贴其他项目历史。
3. 如果任务跨项目，先指定主项目；完成主项目后再单独开另一个项目线程做联动验证。
4. 长任务做到阶段节点时，让 Codex 输出短 handoff：目标、路径、改动文件、验证结果、下一步。

如果 Codex App 的项目列表没有自动刷新，使用 App 自带的打开/添加工作区入口添加上面的 workspace root；不要依赖直接编辑 `.codex-global-state.json`，运行中的 App 可能会写回旧状态。
