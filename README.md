### Artemis Palworld Server

# Artemis Palworld Server

Artemis Palworld Server is an open-source server-side mod for **Palworld**, built with **UE4SS** and Lua.

The goal of Artemis is to provide a powerful and extensible foundation for creating custom server-side features, administration tools, player management systems and more.

> 🚧 **Project Status: Early Development**
>
> Artemis is currently under active development. APIs and features may change frequently.

---

## ✨ Features

Currently implemented:

- Player connection detection
- Player information logging
- Player name detection
- Player ID detection
- UE4SS native hook support
- Server-side Lua architecture
- Debugging and Unreal Engine object inspection
- Modular development structure

More features are planned.

---

## 📋 Example Output

When a player connects, Artemis can currently detect information such as:

```text
[ARTEMIS] =============================
[ARTEMIS] PLAYER CONNECTED
[ARTEMIS] PlayerName = Colder-_-
[ARTEMIS] =============================
````

Artemis can also inspect Unreal Engine objects exposed through UE4SS.

---

## ⚠️ Player Names Are NOT Permanent Identifiers

Artemis intentionally does **not** treat a player's username as a permanent unique identifier.

Palworld allows players to change their username, potentially multiple times.

For example:

```text
Player joins:
Colder-_-

Player changes their name:
CoolPlayer123

Player changes it again:
ArtemisUser
```

These names may all belong to the same player.

Therefore:

> **PlayerName should only be used for display and logging purposes.**

A future stable identifier should be used for permanent player identification.

---

## 🛠️ Requirements

* Palworld Dedicated Server
* Windows
* UE4SS
* Lua support for UE4SS
* Basic knowledge of Lua and Unreal Engine concepts

---

## 📦 Installation

### 1. Install UE4SS

Install UE4SS into your Palworld Dedicated Server installation.

### 2. Clone Artemis

Clone this repository into your UE4SS Mods directory:

```text
PalServer/
└── Pal/
    └── Binaries/
        └── Win64/
            └── ue4ss/
                └── Mods/
                    └── ArtemisServer/
```

### 3. Enable the mod

Add ArtemisServer to:

```text
enabled.txt
```

For example:

```text
ArtemisServer
```

### 4. Start your Palworld server

If everything is installed correctly, you should see:

```text
[ARTEMIS] Hook ready!
```

followed by player connection information when a player joins.

---

## 🧩 Development

Artemis is written primarily in **Lua** and uses UE4SS to interact with Palworld's Unreal Engine environment.

The project is structured to make it easier to add new server-side functionality over time.

Example structure:

```text
ArtemisServer/
├── Scripts/
│   └── main.lua
├── enabled.txt
└── README.md
```

---

## 🤝 Contributing

**Contributors are very welcome! ❤️**

Artemis is an open-source project and we would be happy to have people helping us improve it.

You can contribute by:

* Adding new features
* Improving existing systems
* Fixing bugs
* Improving documentation
* Testing Artemis on different server configurations
* Investigating Unreal Engine / Palworld structures
* Improving player identification
* Optimizing Lua code

### Pull Requests

Feel free to fork the repository, make your changes and open a Pull Request.

Please try to keep contributions clean, documented and compatible with the existing project structure.

---

## 🐛 Issues

Found a bug?

Please open an issue and include:

* Artemis version
* Palworld version
* UE4SS version
* Your server configuration
* Relevant console logs
* Steps to reproduce the problem

The more information you provide, the easier it is to investigate.

---

## 📜 License

This project is open source.

See the `LICENSE` file for the full license information.

---

## 🌟 Support the Project

If you find Artemis useful:

* ⭐ Star the repository
* 🐛 Report bugs
* 💡 Suggest features
* 🔧 Contribute code
* 📖 Improve the documentation

Every contribution helps Artemis grow.

---

# Artemis Palworld Server

**Open source. Community driven. Built for Palworld servers.**
