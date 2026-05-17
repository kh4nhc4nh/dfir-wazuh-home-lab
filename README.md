# dfir-wazuh-home-lab
LAB create for Kh4nh
--shell
├── README.md
├── LICENSE
├── .gitignore
│
├── configs/
│   ├── sysmonconfig.xml
│   ├── local_rules.xml
│   └── ossec.conf
│
├── scripts/
│   ├── enable-powershell-logging.ps1
│   └── generate-test-events.ps1
│
├── docs/
│   ├── architecture.md
│   └── screenshots/
│       ├── dashboard-alerts.png
│       ├── sysmon-events.png
│       └── powershell-4104.png
│
└── detections/
    ├── powershell-detection.md
    ├── sysmon-process-create.md
    └── lolbin-detection.md
--shell
# DFIR Home Lab with Wazuh + Sysmon + Windows Telemetry

## Overview

This project demonstrates a complete DFIR/SOC home lab using:

- Wazuh SIEM
- OpenSearch Dashboard
- Windows 10 Endpoint
- Sysmon
- PowerShell Logging
- Real-time Event Monitoring
- Detection Engineering

The lab simulates real-world endpoint monitoring and threat detection workflows commonly used in SOC and DFIR environments.

---

# Architecture

Windows 10 Endpoint
→ Sysmon
→ Wazuh Agent
→ Wazuh Manager
→ OpenSearch
→ Dashboard Alerts

---

# Environment

| Component | Value |
|---|---|
| Wazuh Version | 4.x |
| Sysmon Version | 15.x |
| Windows OS | Windows 10 |
| Server OS | Ubuntu |
| SIEM | Wazuh |
| Telemetry | Sysmon + PowerShell |

---

# Features

- Sysmon telemetry collection
- PowerShell Script Block Logging
- Process Creation Monitoring
- Detection Rule Engineering
- Threat Hunting Dashboard
- LOLBIN Detection
- Encoded PowerShell Detection
- Real-time alerting

---

# Wazuh Server Installation

```bash
curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh

sudo bash ./wazuh-install.sh -a
