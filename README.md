# GitHub Codespaces

GitHub Codespaces provides instant cloud development environments directly from GitHub repositories.

## Performance concerns

In my experiences GitHub Codespaces are a simple way to spin up an a service, but they can be a bit slow to start which from a user perspective makes them feel a bit unreliable, so I wouldn't recommend them for anything more than a quick demo.  

GitHub Codespaces are a great idea, but you are probably better off hosting your service on a dedicated VM or locally using WSL2.

## Core Features
- **Automatic repo mounting**: Repo cloned to `/workspaces/<repo-name>` with live Git sync
- **Devcontainer.json**: Configures tools, Docker, ports, extensions via `.devcontainer/` [docs.github](https://docs.github.com/en/codespaces/about-codespaces/codespaces-features)
- **Port forwarding**: Auto-detects `localhost:PORT`, creates public URLs, opens browser [docs.github](https://docs.github.com/en/codespaces/developing-in-a-codespace/forwarding-ports-in-your-codespace)
- **VS Code native**: Browser or desktop VS Code with full extension support
- **Multi-VM sizes**: 2-core/8GB → 32-core/128GB, pay-per-use after free quota
- A codespace will suspend after a period of inactivity. You can specify a default idle timeout value, which will apply to all codespaces created after the default is changed. You will be charged for the entire time your codespace is running, even if it is idle. The maximum value is 240 minutes (4 hours).
- Inactive codespaces are automatically deleted 30 days after the last time they were stopped. A shorter retention period can be set, and will apply to all codespaces created going forward. The default and maximum value is 30 days.
- Your default region will be used to designate compute resources to your codespaces. GitHub can set your region automatically based on your location, or you can set it yourself. Codespaces are deployed to a subset of Azure regions.

## Pricing (March 2026)
| Plan | Core-hours/month | Storage | Notes |
|------|------------------|---------|-------|
| Free | 120 core-hours | 15 GB | ~30hr on 4-core machine |
| Pro | Same + priority | Same | Faster queue |
| Team/Ent | Unlimited | Unlimited | Org billing |

## Workflow
```
Repo → Codespace → /workspaces/repo → VS Code → docker compose up → Ports tab → Public URLs
```

[Nautobot](https://github.com/mmorrow24work/codespaces-examples/blob/ae714f422b2fbcc9c362ab277241a08c6e01293a/Nautobot.md)
[Zabbix](https://github.com/mmorrow24work/codespaces-examples/blob/80ecb4fdb8f4d9d52ad96f7ed07f04f6be861396/Zabbix.md) 
