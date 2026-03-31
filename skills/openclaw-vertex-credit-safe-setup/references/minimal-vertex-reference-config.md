# Minimal Vertex Reference Config

Use this public-safe reference when someone needs the shortest possible OpenClaw Vertex AI starter setup.

This file is intentionally incomplete on purpose:

- it shows only the minimum shape to fill
- it avoids real project IDs, account IDs, or secrets
- it keeps credential material outside the repository

## Fill These Locally

- `<gcp-project-id>`
- `<absolute-path-to-service-account-json>`
- optional local private folder such as `~/openclaw/private/google`

## 1. Local-Only Environment

Set these in a private shell profile or a local-only env file.

```bash
export GOOGLE_CLOUD_PROJECT="<gcp-project-id>"
export GOOGLE_APPLICATION_CREDENTIALS="<absolute-path-to-service-account-json>"
```

Rules:

- keep the JSON file outside the repository
- never paste JSON contents into repo files
- do not store real credentials in public examples

## 2. Minimal OpenClaw Model Block

Use the smallest model mapping that still lets you verify the Vertex path.

```jsonc
{
  "agents": {
    "defaults": {
      "imageModel": {
        "primary": "google-vertex/gemini-2.5-flash",
        "fallbacks": [
          "google-vertex/gemini-3.1-pro-preview"
        ]
      },
      "models": {
        "google-vertex/gemini-2.5-flash": {
          "alias": "gemini25flashv"
        },
        "google-vertex/gemini-3.1-pro-preview": {
          "alias": "gemini31v"
        }
      }
    }
  }
}
```

Use this as a starter fragment only. Merge it into the user's real local config instead of replacing unrelated settings.

## 3. Minimal First Verification

After the local config is in place:

1. run one tiny request only
2. confirm the request used a `google-vertex/...` model
3. confirm the target project is the intended billing project
4. tell the user to verify the `Vertex AI` billing line item

## 4. Do Not Add To The Public Template

Keep these out of any public-safe reference:

- service-account JSON contents
- API keys
- OAuth refresh tokens
- app IDs and app secrets
- chat IDs or routing IDs
- machine-specific absolute paths that reveal private directory names

## Handoff Rule

If someone only wants a starter configuration, give them this template first.

Only add broader model coverage, ADC variants, or multi-agent rollout after the tiny verification succeeds.
