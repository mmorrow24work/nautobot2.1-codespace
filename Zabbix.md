<img width="500" height="131" alt="image" src="https://github.com/user-attachments/assets/38ecbe61-7ec3-4e7b-b769-9113ec0d1f17" />

---

**Zabbix** is enterprise-grade open-source monitoring software for networks, servers, cloud, and applications. [zabbix](https://www.zabbix.com/features)

Key capabilities :
- **Data collection**: SNMP, IPMI, JMX, agent/polling, log monitoring, HTTP endpoints, cloud APIs (AWS/Azure/GCP)
- **Smart alerting**: Baseline anomaly detection, predictive thresholds, flapping protection, root cause analysis
- **Visualization**: Real-time graphs, geo-maps, dashboards, inventory tracking
- **Automation**: Auto-discovery, synthetic web transactions, auto-remediation scripts, Zabbix proxies
- **Scalability**: Handles millions of metrics, multi-tenant, high-frequency polling (1s intervals)

Key for network engineers: Zabbix delivers agentless monitoring across entire infrastructures without touching every device.
- SNMP: Monitors routers/switches (Cisco, Juniper, Arista) via industry-standard SNMPv3—no agents needed
- Auto-discovery: Scans IP ranges, finds new devices, applies vendor templates automatically
- Real-time bandwidth: Tracks interface utilization, errors, discards, MTU issues instantly
- Network topology maps: Visualizes Layer 2/3 connectivity with live status indicators
- Proxies for scale: Monitors remote sites/DMZ behind firewalls without VPNs

## Codespaces notes

1. Create your own codespace using this repo - or fork the repo if you want to make changes.
2. Codespaces allow you to test code for free, you get ~30hr on a 4-core machine.
3. Create your new Codespaces instance using the options shown in the screenshot below.
4. From the vscode terminal we can open the Zabbix web UI and login ( defaults Admin / zabbix ).
5. Lastly we can rename the Codespaces instance, or delete it when we are done etc.
