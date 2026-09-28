# Agent Bankers • Mobile Application Release Hub

<div align="center">

[![Latest Release](https://img.shields.io/github/v/release/samcuxx/Agent-Bankers-App-Release?style=for-the-badge&color=5F0E25&label=Latest%20Release)](https://github.com/samcuxx/Agent-Bankers-App-Release/releases/latest)
[![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20APK-3DDC84?style=for-the-badge&logo=android&logoColor=white)](https://github.com/samcuxx/Agent-Bankers-App-Release/releases)
[![Status](https://img.shields.io/badge/Status-Production%20Ready-emerald?style=for-the-badge)](https://github.com/samcuxx/Agent-Bankers-App-Release/releases)
[![Region](https://img.shields.io/badge/Region-Ghana%20🇬🇭-FCD116?style=for-the-badge)](https://agentbankers.org)

**The official public distribution repository for the Agent Bankers Android Terminal application.**  
*Powers agency banking, mobile money settlement, USSD automation, and multi-wallet float operations across Ghana.*

[Download Latest APK](https://github.com/samcuxx/Agent-Bankers-App-Release/releases/latest) • [Browse All Releases](https://github.com/samcuxx/Agent-Bankers-App-Release/releases) • [Web Portal](https://agentbankers.org)

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
Click below to view and download the latest production APK:

- **GitHub Releases**: [https://github.com/samcuxx/Agent-Bankers-App-Release/releases/latest](https://github.com/samcuxx/Agent-Bankers-App-Release/releases/latest)
- **Agent Bankers Web Platform**: [https://agentbankers.org/api/download-app](https://agentbankers.org/api/download-app)
- **Agency Portals**: Accessible via each registered agency's dedicated portal landing page.

---

### Option 2: Step-by-Step Android Installation

1. **Download the APK**:
   - Open your mobile browser and navigate to the latest release on this repository.
   - Tap on the `.apk` asset under the latest release (e.g., `AgentBanker-v2.4.0.apk`) to download.

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
1. **The Web Platform**: When users or agency staff click "Download Application" on any web landing page or agency portal, the backend API (`/api/download-app`) queries this repository's GitHub Releases API, finds the latest `.apk` release asset, and redirects to its direct CDN download URL.
2. **The Mobile Application**: The Android app's `MainViewModel` periodically polls `https://api.github.com/repos/samcuxx/Agent-Bankers-App-Release/releases/latest`. If a version newer than the installed package is detected, an in-app update banner with release notes is presented, allowing one-tap background download and installation.

```
┌─────────────────────────────────┐
│ Agent-Bankers-App-Release (Git) │
│    [GitHub Releases / APKs]     │
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

## 🛠 Publishing a New Release (Maintainers)

To release a new version of the mobile application:

1. **Build the Release APK**:
   ```bash
   cd Agent-Bankers-Mobile
   ./gradlew assembleRelease
   ```
   The APK will be generated at `app/build/outputs/apk/release/app-release.apk`.

2. **Tag the Release**:
   ```bash
   git tag -a v2.4.0 -m "Release v2.4.0"
   git push origin v2.4.0
   ```

3. **Create the GitHub Release**:
   - Go to [Agent-Bankers-App-Release/releases/new](https://github.com/samcuxx/Agent-Bankers-App-Release/releases/new).
   - Select the tag (e.g. `v2.4.0`).
   - Title: `Agent Bankers v2.4.0` (matching the version name in `build.gradle.kts`).
   - Write clear release notes detailing new features and bug fixes.
   - **Attach the APK asset** (name format: `AgentBanker-v2.4.0.apk`).
   - Click **Publish release**.

Once published, all web landing pages and installed mobile apps will automatically detect and serve the new release!

---

## 🔐 Security & Verification

Each release APK is cryptographically signed. To verify the SHA-256 integrity of a downloaded APK:

```bash
sha256sum AgentBanker-v2.4.0.apk
```

Compare the checksum with the SHA-256 hash provided in each release's notes.

---

## 📞 Support & Inquiries

- **Website**: [agentbankers.org](https://agentbankers.org)
- **Email**: support@agentbankers.org
- **Operator Helpline**: 0244950505 (Ghana)

© 2026 Agent Bankers Ghana. All rights reserved.
