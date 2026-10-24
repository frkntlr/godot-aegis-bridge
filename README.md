# 🎮 Aegis Godot Bridge (`aegis_bridge`)

[![Godot Engine](https://img.shields.io/badge/Godot-4.0%20--%204.7%2B-blue.svg?logo=godotengine&logoColor=white)](https://godotengine.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Aegis Autonomous Vibe Coding](https://img.shields.io/badge/Aegis-Engine%20Compatible-green.svg)](https://github.com/frkntlr/aegis)

A lightweight, zero-token autonomous agent bridge, visual UI telemetry inspector, and synthetic input runner for **any Godot 4.x game or application**.

Developed for seamless pairing with the [AEGIS Autonomous Vibe Coding Engine](https://github.com/frkntlr/aegis), Google Antigravity, and autonomous multi-agent systems (Alice, Bob, QA Hunter, UI Specialist, Solver).

---

## 🌟 Key Features

- 📐 **Zero-Token UI Telemetry Inspection**:
  - Dumps live Control node bounding boxes and hierarchies to `.aegis/ui_telemetry.json`.
  - Audits overlapping interactive controls on the same z-plane.
  - Detects viewport boundary clipping across 5 mobile aspect ratios (`9:16`, `9:18`, `9:19.5`, `9:20`, `3:4`).
  - Identifies undersized mobile touch targets (< 48x48 px standard).
- 🤖 **Synthetic Player Automation**:
  - Simulates programmatic mouse clicks, drags, mobile screen taps, and keyboard events.
  - Headless playtesting support (`--headless --quit-after <frames>`).
  - Queues multi-step playtest scenarios from JSON manifests.
- ⚡ **Bi-directional Autonomous RPC**:
  - High-performance WebSocket and HTTP RPC server (default port `6850`).
  - Allows autonomous coding agents to inspect the live scene tree, invoke methods, and evaluate expressions without token-heavy screenshot loops.
- 🎯 **Universal Godot 4 Compatibility**:
  - Works with 2D, 3D, Mobile, Web, UI apps, Roguelites, Puzzle/Crossword games, and RPGs.
  - Adheres to deterministic Demir Kafes constraints (100% clean GDScript, typed contracts).

---

## 🚀 Installation & Quick Start

### Option 1: Automatic via Aegis CLI (Recommended)

When working inside an Aegis-enabled environment, any Godot project containing `project.godot` is **automatically detected and configured**:

```bash
# In your Godot project directory:
aegis godot init
```

Aegis will install `addons/aegis_bridge`, enable the plugin, register the `AegisBridge` singleton autoload, and configure `aegis.config.json` automatically!

---

### Option 2: Git Submodule or Git Clone

You can add this repository directly into your project's `addons/` folder:

```bash
cd /path/to/your/godot/project
git submodule add https://github.com/frkntlr/godot-aegis-bridge.git addons/aegis_bridge
```

Or clone it standalone:
```bash
git clone https://github.com/frkntlr/godot-aegis-bridge.git addons/aegis_bridge
```

---

### Option 3: Manual Installation

1. Copy the `addons/aegis_bridge/` directory from this repository into your Godot project's `addons/` folder.
2. Open your Godot project:
   - Navigate to **Project -> Project Settings -> Plugins**.
   - Enable **Aegis Godot Bridge**.
3. Ensure the autoload singleton is configured (or let `plugin.gd` add it automatically):
   - **Project -> Project Settings -> Globals -> Autoload**
   - Path: `res://addons/aegis_bridge/aegis_client.gd`
   - Name: `AegisBridge`

---

## 📁 Repository Structure

```
godot-aegis-bridge/
├── addons/
│   └── aegis_bridge/
│       ├── plugin.cfg            # Godot addon manifest
│       ├── plugin.gd             # EditorPlugin lifecycle handler
│       ├── aegis_client.gd       # Runtime singleton & RPC server
│       ├── ui_verifier.gd        # Zero-token UI bounding box inspector
│       ├── synthetic_player.gd   # Input simulation engine (tap/click/drag)
│       └── compat_bridge.gd      # Engine version & feature detection
├── project.godot                 # Sample demonstration Godot project
├── main.tscn                     # Sample verification scene
├── main.gd                       # Verification script
├── LICENSE                       # MIT License
└── README.md                     # Documentation
```

---

## 🕹️ Autonomous Agent CLI Commands

When paired with `@aegis/cli`:

| Command | Action |
| :--- | :--- |
| `aegis godot init [dir]` | Auto-installs addon and configures `project.godot` |
| `aegis godot status` | Inspects local Godot installation and bridge port |
| `aegis godot inspect` | Validates cached UI telemetry across mobile aspect ratios |
| `aegis godot playtest [file]` | Queues synthetic player scenario actions |
| `aegis godot validate [file]` | Audits GDScript against ClassDB rules and signal safety |
| `aegis godot query <Class>` | Queries ClassDB inheritance tree and methods offline |

---

## 🇹🇷 Türkçe Açıklama

Aegis Godot Bridge, her türlü **Godot 4.x** (4.0 - 4.7+) oyun ve uygulaması için geliştirilmiş açık kaynaklı, hafif ve otonom yapay zeka entegrasyon eklentisidir.

### Temel Özellikler
1. **Sıfır Token Görsel UI Denetimi**: Ekran görüntüsü göndermeden UI düğümlerinin sınır kutularını (`bounding box`) analiz eder; buton çakışmalarını, taşmaları ve küçük dokunma alanlarını anında tespit eder.
2. **Sentetik Oyuncu (Playtest)**: Başsız (`headless`) veya canlı modda dokunma, tıklama ve sürükleme girdilerini simüle ederek otomatik oynanış testleri yürütür.
3. **RPC Köprüsü**: WebSocket/HTTP üzerinden sahne ağacını denetleme ve metot çalıştırma olanağı sunar.
4. **Evrensel Uyumluluk**: 2D, 3D, Mobil, Bulmaca veya Aksiyon tüm Godot 4 projelerine uygundur.

---

## 📄 License

Licensed under the [MIT License](LICENSE).  
Copyright (c) 2026 Furkan Canberk Atalar & Aegis Guild.
