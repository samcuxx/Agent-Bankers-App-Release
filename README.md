# Agent Bankers • Mobile Application Release Hub

<div align="center">

[![Release](https://img.shields.io/badge/Release-v1.0-5F0E25?style=for-the-badge&logo=github)](https://github.com/samcuxx/Agent-Bankers-App-Release/releases)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20APK-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://github.com/samcuxx/Agent-Bankers-App-Release/raw/main/releases/ABAG-v1.0.apk)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-emerald?style=for-the-badge)](https://github.com/samcuxx/Agent-Bankers-App-Release/releases)
[![Region](https://img.shields.io/badge/Region-Ghana%20🇬🇭-FCD116?style=for-the-badge)](https://agentbankers.org)

**The official public distribution repository for the Agent Bankers Android Terminal application.**  
*Powers agency banking, mobile money settlement, USSD automation, and multi-wallet float operations across Ghana.*

[Download ABAG-v1.0.apk](https://github.com/samcuxx/Agent-Bankers-App-Release/raw/main/releases/ABAG-v1.0.apk) • [Browse All Releases](https://github.com/samcuxx/Agent-Bankers-App-Release/releases) • [Web Portal](https://agentbankers.org)

</div>

---

## 📱 About Agent Bankers Mobile

The **Agent Bankers Mobile Application** is a native Android terminal built specifically for agency banking operators, branch tellers, and mobile money merchants in Ghana. It integrates directly with telecom USSD gateways, partner commercial banks, and the Agent Bankers cloud backend to eliminate reconciliation errors, prevent transaction fraud, and automate cash-in/cash-out workflows.

### Key Capabilities
- **Automated USSD Flow Engine**: High-speed, accessibility-powered transaction execution for MTN Mobile Money, Telecel Cash, and AT Money without manual keypad errors.
- **Direct Bank Settlement**: Settle float directly with partner banks (Ecobank, GCB, Stanbic) without physical counter slips.
- **Real-Time Float Reconciliation**: Instantly reconcile branch cash drawers, partner bank reserves, and mobile money float balances.
- **Branch Geofencing & Fraud Shield**: Enforces location-verified teller attendance and cross-checks customer numbers against nationwide fraud databases.
- **Over-The-Air (OTA) In-App Updates**: Automatically detects, downloads, and prompts tellers to install updates directly sourced from this GitHub release repository.

---

## 🚀 Download & Installation Guide

### Option 1: Direct Download
Click below to download the official production APK:

- **Direct Download (v1.0)**: [ABAG-v1.0.apk (19 MB)](https://github.com/samcuxx/Agent-Bankers-App-Release/raw/main/releases/ABAG-v1.0.apk)
- **Latest Release Channel**: [ABAG-latest.apk](https://github.com/samcuxx/Agent-Bankers-App-Release/raw/main/releases/ABAG-latest.apk)
- **Agent Bankers Web Platform**: [https://agentbankers.org/api/download-app](https://agentbankers.org/api/download-app)
- **Agency Portals**: Accessible via each registered agency's dedicated portal landing page.

---

### Option 2: Step-by-Step Android Installation

1. **Download the APK**:
   - Open your mobile browser and download [`ABAG-v1.0.apk`](https://github.com/samcuxx/Agent-Bankers-App-Release/raw/main/releases/ABAG-v1.0.apk).

2. **Enable Unknown Apps (First-time installation)**:
   - When prompted that the download may be harmful or that your browser is not authorized to install unknown apps, tap **Settings**.
   - Toggle **Allow from this source** (or *Install unknown apps*) to **ON**.
   - Press the Back button to return to the installer.

3. **Install the Application**:
   - Tap **Install** and wait for the package installer to complete.
   - Tap **Open** to launch the Agent Bankers terminal.

4. **Grant Required Permissions**:
   - **Phone & Accessibility**: Needed for automated USSD session execution.
   - **Location**: Required for branch geofence attendance verification.
   - **Notifications**: Needed for real-time transaction alerts and in-app update notices.

---

## 🔄 How the Update System Works

This repository functions as the central single source of truth for both:
1. **The Web Platform**: When users or agency staff click "Download Application" on any web landing page or agency portal, the backend API (`/api/download-app`) queries this repository's GitHub Releases API (and falls back directly to the hosted repository APK release asset), redirecting visitors directly to the download stream.
2. **The Mobile Application**: The Android app's `MainViewModel` periodically polls `https://api.github.com/repos/samcuxx/Agent-Bankers-App-Release/releases/latest` (and falls back to `version.json`). If a version newer than the installed package is detected, an in-app update banner with release notes is presented, allowing one-tap background download and installation.

```
┌─────────────────────────────────┐
│ Agent-Bankers-App-Release (Git) │
│ [Releases APKs & version.json]  │
└───────────────┬─────────────────┘
                │
        ┌───────┴───────┐
        ▼               ▼
┌───────────────┐ ┌───────────────┐
│ Web & Agency  │ │ Mobile Client │
│ Landing Pages │ │ (In-App OTA)  │
└───────────────┘ └───────────────┘
```

---

## 🔐 Checksums & Security Verification

Each release APK is cryptographically signed using the official Agent Bankers production signing key (verified with Android APK Signature Scheme v2).

| Asset | Size | SHA-256 Checksum |
|---|---|---|
| `ABAG-v1.0.apk` | 19.2 MB | `a651f80a1f773333d8e7826d084ab93cc3da4d58a3161d577881268377cb9417` |

To verify on your system:
```bash
sha256sum releases/ABAG-v1.0.apk
```

---

## 📞 Support & Inquiries

- **Website**: [agentbankers.org](https://agentbankers.org)
- **Email**: support@agentbankers.org
- **Operator Helpline**: 0244950505 (Ghana)

© 2026 Agent Bankers Ghana. All rights reserved.
