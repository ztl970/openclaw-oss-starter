---
name: feishu-marketing-publisher
description: Prepare and publish public-safe marketing announcements to Feishu/Lark using an approved account, target group, and finalized project copy.
version: 1.0.0
---

# Feishu Marketing Publisher

Prepare and send public-safe marketing updates to Feishu.

## Workflow

1. Start from approved project copy.
2. Choose the Feishu account and target group.
3. Adapt the copy for Feishu: clear, short, link-ready.
4. Confirm the post stays public-safe.
5. Send only after the content and target are explicit.

## Inputs

- announcement text or launch summary
- target account such as `main` or `media`
- target group or chat
- link to GitHub, ClawHub, or release note

## Rules

- Keep the message concise and factual.
- Prefer one main announcement with one CTA.
- Do not invent user counts or claims.
- Do not send private runtime details.
- Use the configured Feishu account and allowed target only.

## Output shape

- one Feishu-ready post
- optional shorter fallback version
- clear CTA line

