## Ozan Özdil

Developer and photographer based in Kastamonu, Türkiye. I build native Linux tools for the [Omarchy](https://omarchy.org) desktop (Arch Linux, Hyprland, Quickshell) in Rust and QML, coordinate open-source work at Kastamonu Municipality, and document the architecture and landscapes of the Western Black Sea region on a Fujifilm GFX medium-format camera.

[ozanozdil.com](https://ozanozdil.com) · [FOSSWire](https://fosswire.org) · [X](https://x.com/ozanozdil) · [Hugging Face](https://huggingface.co/ozanozdil) · [ozan@pm.me](mailto:ozan@pm.me)

### Featured

<div align="center">

<a href="https://totaldrop.app">
<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/totaldrop-app/totaldrop/main/docs/assets/lockup-dark.svg">
  <img src="https://raw.githubusercontent.com/totaldrop-app/totaldrop/main/docs/assets/lockup-light.svg" alt="TotalDrop" width="260">
</picture>
</a>

**Any file, to anyone, anywhere.**<br>
Free and open source. End-to-end encrypted. No email, no phone number, no account.

<a href="https://totaldrop.app"><img src="https://raw.githubusercontent.com/totaldrop-app/totaldrop/main/docs/assets/linux.png" alt="The TotalDrop Linux app on Omarchy, in the desktop's own colours, fonts and icons" width="560"></a>

</div>

Pick files, get a short code like `7-harbor-rocket`, read it out or show the QR code. The other person types it in and the files arrive, straight from device to device. Both screens show the same four words before anything moves, so you can check that nobody is in between.

- **Encryption you can check:** CPace turns the short code into a strong key, then QUIC with Noise XXpsk3 and ML-KEM-768, which is designed to hold up against future quantum computers. Files are encrypted and authenticated chunk by chunk.
- **Nothing to sign up for:** the rendezvous server only introduces the two devices and keeps no logs. When a firewall blocks a direct link, a relay carries traffic it cannot read.
- **Native on each system:** the Linux app is Qt 6 on Wayland and follows KDE Plasma, Hyprland and Omarchy themes live. 35 interface languages.
- **Open and funded by donations:** Rust libraries under MIT/Apache-2.0, apps under GPL-3.0, servers under AGPL-3.0. Every package is built by CI from a tagged commit.

| Linux | Android | Command line | Windows, macOS, iOS |
| :--- | :--- | :--- | :--- |
| 0.3.0-beta.5 · Arch, Debian/Ubuntu, Fedora · x86-64 and ARM64 | 0.3.0-beta.6 · closed beta | `cargo install` · Linux, macOS, Windows | planned |

**[totaldrop.app](https://totaldrop.app)** · [Download](https://totaldrop.app/download/) · [Source](https://github.com/totaldrop-app/totaldrop) · [Roadmap](https://totaldrop.app/roadmap/) · [Donate](https://totaldrop.app/donate/)

> TotalDrop is in beta and has not had an independent security review yet. Donations pay for that review before 1.0.

<br>

<table>
<tr>
<td width="50%" valign="top">

#### [FOSSWire](https://fosswire.org)

The open source newswire: Linux, open hardware, RISC-V and security news taken straight from upstream sources. No ads, no trackers. Every item has a short takeaway and a tag, and the front page can be ranked by trending, weekly, monthly or all time.

Reads in a terminal too:

```sh
curl https://fosswire.org
```

Astro · TypeScript · Cloudflare · [Omarchy top bar widget](https://github.com/ozdil/omarchy-fosswire)

</td>
<td width="50%" valign="top">

#### [OmaStudio](https://github.com/ozdil/omarchy-omastudio)

<a href="https://github.com/ozdil/omarchy-omastudio"><img src="https://raw.githubusercontent.com/ozdil/omarchy-omastudio/master/docs/images/main-essentials.webp" alt="OmaStudio editing a Fujifilm GFX 50R photo"></a>

Non-destructive RAW editor for Omarchy Linux with its own Rust engine and a 16-bit pipeline from sensor to export. Dedicated support for Fujifilm GFX and X, Hasselblad, Phase One, Leaf, Mamiya and Pentax 645; Fujifilm photos open with the film recipe they were shot with.

Rust · Qt 6 / QML · Vulkan · v3.2.1 · MIT

</td>
</tr>
</table>

### More applications

| Project | What it does | Stack |
| :--- | :--- | :--- |
| [PolyCodex](https://github.com/ozdil/polycodex) | Translates PDFs while keeping layout, images and tables; runs on local Ollama models | Rust |
| [QuickNews](https://github.com/ozdil/quicknews) | Ad-free, text-first RSS/Atom reader with optional local AI summaries | Rust |
| [DeckOpt](https://github.com/ozdil/deckopt) | Suggests per-game TDP and GPU clock settings for the Steam Deck within safe hardware limits | Python |
| [OmaStat](https://github.com/ozdil/omastat) | Collects and visualises Linux hardware and system measurements | HTML, JS |

### Omarchy desktop components

| Project | What it does |
| :--- | :--- |
| [Security Sentinel](https://github.com/ozdil/omarchy-security-sentinel) | Security panel for USB device control, CVE and DNS-leak checks |
| [NetRadar](https://github.com/ozdil/omarchy-netradar) | Local network scanner that needs no root; vendor lookup and ping |
| [OmaNotes](https://github.com/ozdil/omarchy-omanotes) | End-to-end encrypted notes synced through Git or Google Drive |
| [OmaBlock](https://github.com/ozdil/omarchy-omablock) | System-wide ad and tracker blocker |
| [OmaRSS](https://github.com/ozdil/omarchy-omarss) | RSS/Atom reader and notification centre |
| [OmaRank](https://github.com/ozdil/omarchy-omarank) | Hardware and kernel benchmark tool |
| [Git Radar](https://github.com/ozdil/omarchy-git-radar) | Status panel for several Git repositories |
| [Plugin Craft](https://github.com/ozdil/omarchy-plugin-craft) | Plugin manager for Omarchy |
| [FOSSWire for Omarchy](https://github.com/ozdil/omarchy-fosswire) | FOSSWire headlines in the Omarchy top bar |

Themes: [Türkiye](https://github.com/ozdil/omarchy-turkiye-theme) · [İstanbul](https://github.com/ozdil/omarchy-istanbul-theme) · [Ankara](https://github.com/ozdil/omarchy-ankara-theme) · [Steam Machine](https://github.com/ozdil/omarchy-steammachine-theme) · [Neuramancer](https://github.com/ozdil/omarchy-neuramancer-theme) · [Monotone](https://github.com/ozdil/omarchy-monotone-theme)

### Web and public sector

- [Kastamonu Smart City Platform](https://github.com/Kastamonu-Belediye-Baskanligi/kastamonu-akilli-sehir-platformu): digital archive and open-data platform for Kastamonu Municipality.
- [ozanozdil.com](https://ozanozdil.com): personal site with technical writing in Turkish and a photo gallery. Astro on Cloudflare Workers.

### Supporting the work

Everything listed above is free and open source. If a tool saves you time, you can support its maintenance through [GitHub Sponsors](https://github.com/sponsors/ozdil).

---

<details>
<summary><b>Türkçe</b></summary>

<br>

Kastamonu'da yaşayan bir geliştirici ve fotoğrafçıyım. Arch Linux tabanlı [Omarchy](https://omarchy.org) masaüstü için Rust ve QML ile yerel araçlar geliştiriyor, Kastamonu Belediyesinde açık kaynak çalışmalarını koordine ediyor, Fujifilm GFX orta format fotoğraf makinesiyle Batı Karadeniz'in ahşap mimarisini ve doğasını belgeliyorum.

Öne çıkan projeler:

- [TotalDrop](https://totaldrop.app): her dosyayı herkese, her yere gönderir. Kısa bir kodla, uçtan uca şifreli ve hesap açmadan. Ücretsiz, açık kaynak ve bağışla ayakta duruyor. Linux ve Android için beta sürümde.
- [FOSSWire](https://fosswire.org): Linux, açık donanım, RISC-V ve güvenlik haberlerini doğrudan kaynağından veren, reklamsız ve izleyicisiz açık kaynak haber sitesi.
- [OmaStudio](https://github.com/ozdil/omarchy-omastudio): Omarchy Linux için kendi Rust motoruyla çalışan, 16 bit orta format RAW düzenleyicisi.

Diğerleri: sayfa düzenini koruyarak PDF çeviren [PolyCodex](https://github.com/ozdil/polycodex) ve reklamsız haber okuyucusu [QuickNews](https://github.com/ozdil/quicknews). Türkçe teknik yazılarım ve fotoğraf albümlerim [ozanozdil.com](https://ozanozdil.com) adresinde.

Projelerin hepsi ücretsiz ve açık kaynaktır. İşinize yaradıysa [GitHub Sponsors](https://github.com/sponsors/ozdil) üzerinden bakımına destek olabilirsiniz. İletişim: [ozan@pm.me](mailto:ozan@pm.me)

</details>
