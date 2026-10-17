#!/usr/bin/env bash
set -euo pipefail

# ==============================================================================
# Ozan Ozdil (@ozdil) — GitHub Profile & GitHub Sponsors Tier Provisioner
# ==============================================================================
# Enforces HANCORE argument safety and provisions:
#   1. GitHub Account Metadata (Name: "Ozan Özdil", Professional Bio)
#   2. 5 Published Monthly Sponsorship Tiers ($5, $15, $50, $100, $250)
#   3. 4 Published One-Time Sponsorship Tiers ($15, $50, $150, $500)
# ==============================================================================

echo "[INFO] Checking GitHub CLI authentication scopes..."
if ! gh auth status 2>&1 | grep -q "'user'"; then
  echo "[NOTICE] 'user' scope is required to update profile metadata and publish GitHub Sponsors tiers."
  echo "[ACTION] Requesting 'user' scope via: gh auth refresh -h github.com -s user"
  gh auth refresh -h github.com -s user
fi

echo "[INFO] Updating GitHub Profile display name and bio..."
gh api --method PATCH /user \
  -f name="Ozan Özdil" \
  -f bio="Systems Architect | Omarchy Linux & HANCORE Security Ecosystem | Rust, C++, Kotlin, QML | Creator of FOSSWire & Açık CBS" \
  -f location="Kastamonu, Türkiye" \
  -f blog="https://ozanozdil.com" \
  --jq '{login: .login, name: .name, bio: .bio, blog: .blog}'

create_tier() {
  local amount="$1"
  local is_recurring="$2"
  local desc="$3"
  local welcome="$4"

  echo "[INFO] Creating Sponsors tier: \$${amount} (recurring=${is_recurring})..."
  gh api graphql \
    -F sponsorableLogin="ozdil" \
    -F amount="${amount}" \
    -F isRecurring="${is_recurring}" \
    -f description="${desc}" \
    -f welcomeMessage="${welcome}" \
    -F publish=true \
    -f query='
      mutation($sponsorableLogin: String!, $amount: Int!, $isRecurring: Boolean!, $description: String!, $welcomeMessage: String!, $publish: Boolean!) {
        createSponsorsTier(input: {
          sponsorableLogin: $sponsorableLogin,
          amount: $amount,
          isRecurring: $isRecurring,
          description: $description,
          welcomeMessage: $welcomeMessage,
          publish: $publish
        }) {
          sponsorsTier {
            id
            name
            monthlyPriceInDollars
            isOneTime
          }
        }
      }
    ' --jq '.data.createSponsorsTier.sponsorsTier' || echo "[WARN] Tier \$${amount} (recurring=${is_recurring}) may already exist."
}

# ------------------------------------------------------------------------------
# Monthly Sponsorship Tiers
# ------------------------------------------------------------------------------
create_tier 5 true \
"### Open-Source Backer / Açık Kaynak Destekçisi

- **[EN]** Supports continuous package maintenance, automated CI/CD builds, and documentation across 35+ public repositories in the Omarchy Linux ecosystem.
- **[TR]** 35'ten fazla açık kaynak deponun sürekli bakımına, paket derlemelerine ve dokümantasyon süreçlerine doğrudan katkı sağlar.
- Includes the **Public Sponsor** badge on your GitHub profile." \
"Thank you for backing independent open-source systems engineering! Desteğiniz için çok teşekkür ederim."

create_tier 15 true \
"### Systems Supporter / Sistem Destekçisi

- **[EN]** Fuels active development of HANCORE-compliant security sentinels (\`omarchy-security-sentinel\`, \`omarchy-omablock\`, \`omarchy-netradar\`) and native Quickshell desktop plugins.
- **[TR]** HANCORE güvenlik standardına uyumlu sistem kalkanlarının ve yerel Quickshell eklentilerinin geliştirilmesini hızlandırır.
- Listed in community sponsor acknowledgments." \
"Thank you for supporting the Omarchy Linux and HANCORE security ecosystem! Katkınız için teşekkürler."

create_tier 50 true \
"### Security & Kernel Sentinel / Güvenlik ve Sistem Kalkanı

- **[EN]** Directly funds bare-metal hardware testbed validation (BadUSB HID guards, 802.11 Netlink anonymization, Bluetooth L2CAP audio DSP, multi-monitor VRR) and **priority issue/feature triage** across all Omarchy repositories.
- **[TR]** Donanım test laboratuvarı doğrulamalarını (BadUSB, Wi-Fi MAC gizliliği, Bluetooth L2CAP ses motoru) ve hata/özellik taleplerinde **öncelikli değerlendirme** süreçlerini destekler." \
"Welcome as a Security & Kernel Sentinel sponsor! Feel free to reach out directly on any repository issue for priority triage."

create_tier 100 true \
"### Architecture Patron / Mimari Patronu

- **[EN]** Accelerates deep R&D on flagship computational platforms: **OmaStudio** (16-bit GPU RAW photo laboratory), **PolyCodex** (5,000-page layout-preserving PDF translator), **OmaSend** (Zero-Knowledge E2EE AirBridge), and **Açık CBS** (\`acikcbs.com\`).
- **[TR]** OmaStudio, PolyCodex, OmaSend ve Açık CBS projelerinin ileri seviye Ar-Ge ve sunucu altyapısını doğrudan finanse eder.
- Your name or GitHub handle featured in flagship repository README files." \
"Thank you for becoming an Architecture Patron! Let me know how you would like your name/handle listed in our flagship READMEs."

create_tier 250 true \
"### Enterprise & Ecosystem Partner / Kurumsal Ekosistem Ortağı

- **[EN]** Designed for teams and organizations relying on Linux security tooling, spatial systems, or custom Rust/QML engineering. Includes **2 hours/quarter of dedicated architectural consultation**, priority roadmap input, and prominent logo/link placement across flagship repositories and \`ozanozdil.com\`.
- **[TR]** Kurumsal ekipler ve organizasyonlar için özel mimari danışmanlık (çeyrek dönem başına 2 saat), yol haritası önceliklendirmesi ve ana projelerde kurumsal görünürlük sağlar." \
"Welcome as an Enterprise & Ecosystem Partner! Please reach out via ozanozdil.com to schedule your architectural alignment session."

# ------------------------------------------------------------------------------
# One-Time Sponsorship Tiers
# ------------------------------------------------------------------------------
create_tier 15 false \
"### Build & CI Booster / Derleme ve Altyapı Desteği

- **[EN]** One-time contribution covering cloud CI/CD build minutes, cryptographic release verification, and mirror bandwidth.
- **[TR]** Bulut CI/CD derleme sürelerini, kriptografik sürüm doğrulamalarını ve paket dağıtım bant genişliğini karşılayan tek seferlik destek." \
"Thank you for boosting our open-source build and release pipelines!"

create_tier 50 false \
"### Hardware Testbed Module / Donanım Test Laboratuvarı Katkısı

- **[EN]** Contributes directly toward USB, Wi-Fi, and Bluetooth peripheral hardware used to test and verify HANCORE security sentinels on bare metal.
- **[TR]** HANCORE güvenlik kalkanlarının gerçek donanım üzerinde test edilmesi için kullanılan USB, ağ ve ses donanımlarına doğrudan katkı sağlar." \
"Thank you for funding bare-metal hardware verification for the Omarchy ecosystem!"

create_tier 150 false \
"### Release Cycle Patron / Sürüm Döngüsü Sponsoru

- **[EN]** Sponsors a major feature milestone or release cycle across **OmaStudio**, **OmaSend**, **PolyCodex**, or **Omarchy Security Sentinel**.
- **[TR]** OmaStudio, OmaSend, PolyCodex veya Security Sentinel projelerinde büyük bir sürüm döngüsünün geliştirilmesini finanse eder." \
"Thank you for sponsoring a major open-source release milestone!"

create_tier 500 false \
"### Infrastructure & Open-Data Grant / Altyapı ve Açık Veri Hibesi

- **[EN]** Direct grant supporting dedicated server infrastructure for **Açık CBS** (\`acikcbs.com\`), **FOSSWire** (\`fosswire.org\` across 17 languages), and **OmaStat** community telemetry.
- **[TR]** Açık CBS, 17 dilde yayın yapan FOSSWire ve OmaStat topluluk altyapılarının sunucu ve veri giderlerini destekleyen doğrudan Ar-Ge hibesi." \
"Thank you for your generous Infrastructure & Open-Data Grant!"

echo "[SUCCESS] GitHub Profile metadata and all 9 GitHub Sponsors tiers have been provisioned."
