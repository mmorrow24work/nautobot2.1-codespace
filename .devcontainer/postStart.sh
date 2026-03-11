#!/usr/bin/env bash
set -euo pipefail

echo "logs:/workspaces/.codespaces/.persistedshare" > nautobot-only.txt
echo "User=admin / Password=admin" >> nautobot-only.txt
echo "docker exec -it nautobot-lab nautobot-server createsuperuser" >> nautobot-only.txt

# docker run -itd --name nautobot-lab -p 8082:8000 --hostname nautobot-lab.local networktocode/nautobot-lab

docker run -itd \
  --name nautobot-lab \
  -p 8082:8000 \
  --hostname nautobot-lab.local \
  -e SUPERUSER_NAME=admin \
  -e SUPERUSER_PASSWORD=admin \
  -e SUPERUSER_EMAIL=admin@example.com \
  networktocode/nautobot-lab

# URLs (Codespaces auto-forwards)
echo "Nautobot UI: http://localhost:8082"
echo "Nautobot Login User=admin / Password=admin"
