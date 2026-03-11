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

# Nautobot 

**Nautobot** is an open-source Network Source of Truth (NSoT) and automation platform, forked from NetBox. [networktocode](https://networktocode.com/nautobot/)

It serves three core functions:
- **Source of Truth**: Models network infrastructure (devices, IPs, cables, racks) with custom fields/relationships
- **Automation Platform**: REST/GraphQL APIs, Git integration, webhooks drive Ansible/Terraform workflows
- **App Ecosystem**: Extensible plugin system for custom models, jobs, and integrations

Key for network engineers: validates data, syncs disparate sources, enables intent-based networking, and supports multi-vendor device modeling with dynamic config generation.[](https://networktocode.com/nautobot/)[](https://docs.nautobot.com/projects/core/en/stable/)

## Codespaces notes

1. Create your own codespace using this repo - or fork the repo if you want to make changes.
2. Codespaces allow you to test code for free, you get ~30hr on a 4-core machine.
3. Create your new Codespaces instance using the options shown in the screenshot below ...
4. The first time we start nautobot, we need to run `createsuperuser` from the vscode terminal to setup a Login and Password ( in the example we used admin / admin but feel free to use whatever you prefer )
5. From the vscode terminal we can open the Web UI and login
6. Lastly we can rename the Codespaces instance, or delete it when we are done etc.

<img width="654" height="396" alt="image" src="https://github.com/user-attachments/assets/27dd4bc7-cb8c-47a7-bf9e-880de9688986" />
<img width="740" height="361" alt="image" src="https://github.com/user-attachments/assets/57a70101-c9fc-4afd-809b-6ad3ad20ea18" />


```bash
👋 Welcome to Codespaces! You are on a custom image defined in your devcontainer.json file.

🔍 To explore VS Code to its fullest, search using the Command Palette (Cmd/Ctrl + Shift + P)

📝 Edit away, then run your build command to see your code running in the browser.
@user1 ➜ /workspaces/codespaces-examples (main) $ ls -l
total 8
-rw-rw-rw- 1 vscode vscode 134 Mar 11 17:17 nautobot-only.txt
-rw-rw-rw- 1 vscode root   498 Mar 11 17:15 README.md
@user1 ➜ /workspaces/codespaces-examples (main) $ cat nautobot-only.txt
logs:/workspaces/.codespaces/.persistedshare
User=admin / Password=admin
docker exec -it nautobot-lab nautobot-server createsuperuser
@user1 ➜ /workspaces/codespaces-examples (main) $ docker exec -it nautobot-lab nautobot-server createsuperuser
Username: admin
Email address: admin@localhost.com
Password: 
Password (again): 
Superuser created successfully.
@user1 ➜ /workspaces/codespaces-examples (main) $
```
<img width="856" height="435" alt="image" src="https://github.com/user-attachments/assets/a7dc3c5c-01ac-4f82-bd5e-061d3d971080" />
<img width="2566" height="1398" alt="image" src="https://github.com/user-attachments/assets/9d259763-4896-40b0-a67e-b7116e47c78c" />

<img width="559" height="496" alt="image" src="https://github.com/user-attachments/assets/853f4548-4c1e-46a9-83c3-701f72798804" />
<img width="559" height="496" alt="image" src="https://github.com/user-attachments/assets/853f4548-4c1e-46a9-83c3-701f72798804" />
<img width="437" height="253" alt="image" src="https://github.com/user-attachments/assets/c7e4fa3e-f3c8-4177-ad17-1c3652dfcf93" />


