<div align="center">

# 🚀 CBWIRE Examples

### A comprehensive showcase of CBWIRE's reactive components for ColdBox applications

[![ColdBox](https://img.shields.io/badge/ColdBox-Framework-blue.svg)](https://www.coldbox.org)
[![CBWIRE](https://img.shields.io/badge/CBWIRE-Module-purple.svg)](https://github.com/coldbox-modules/cbwire)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](LICENSE)

[Documentation](https://cbwire.ortusbooks.com) • [GitHub](https://github.com/coldbox-modules/cbwire) • [Report Bug](https://github.com/grantcopley/cbwire-examples/issues)

</div>

---

## 📖 Overview

CBWIRE Examples is an interactive demonstration application showcasing the full capabilities of CBWIRE, a modern reactive component framework for ColdBox applications. This repository provides hands-on examples that illustrate best practices and patterns for building dynamic, reactive user interfaces in CFML.

Whether you're new to CBWIRE or looking to master advanced techniques, these examples provide practical, real-world implementations you can learn from and adapt for your own projects.

## ✨ Features

This application demonstrates:

### 🎯 **Getting Started**
- **Data Properties** - Managing component state and data
- **Passing Parameters** - Component initialization and parameter handling
- **Actions** - Event handling and method invocation
- **Computed Properties** - Dynamic data derivation
- **Data Binding** - Two-way data synchronization
- **JavaScript Listeners** - Integration with JavaScript events
- **Query String** - URL state management
- **Redirect** - Navigation and routing patterns

### 📝 **Forms**
- **Text Input** - Single-line text handling
- **Checkbox Input** - Boolean and array selections
- **Radio Input** - Exclusive option selection
- **Select Input** - Dropdown menus
- **Multiselect Input** - Multiple value selection
- **Submit Button** - Form submission handling
- **Validation** - Client and server-side validation patterns
- **File Upload** - File handling and uploads
- **Modal** - Dynamic modal dialogs

### ⚡ **Template Directives**
- **wire:model** - Data binding directive
- **wire:click** - Click event handling
- **wire:keydown** - Keyboard event handling
- **wire:loading** - Loading state management
- **wire:dirty** - Change detection
- **wire:poll** - Automatic polling
- **wire:init** - Component initialization
- **Magic Actions** - Special action modifiers

### 🔥 **Advanced**
- **S3 Dropdown** - Cloud storage integration
- **Parse URI** - URL parsing and manipulation
- **Nested Wires** - Component composition
- **Headless CBWIRE** - API-first patterns
- **Poll with Long Running Process** - Async operation handling

### 🎨 **Alpine.js Integration**
- **Alpine x-data** - Combining CBWIRE with Alpine.js

## 🎨 Screenshot

![CBWIRE Examples Application](https://github.com/grantcopley/cbwire-examples/assets/1197835/d2523e16-e644-4af6-b536-ea283065f443)

## 🛠️ Requirements

- **CommandBox** 5.8 or higher
- **ColdFusion** 2018+ or **Lucee** 5.3+
- Modern web browser (Chrome, Firefox, Safari, Edge)

## 🚀 Quick Start

### Installation

1. **Clone the repository**
   ```bash
   git clone git@github.com:grantcopley/cbwire-examples.git
   cd cbwire-examples
   ```

2. **Install dependencies**
   ```bash
   box install
   ```

3. **Start the server**
   ```bash
   box server start --open
   ```

Your browser will automatically open to the application homepage once the server completes startup.

### Alternative Installation

You can also use HTTPS for cloning:
```bash
git clone https://github.com/grantcopley/cbwire-examples.git
```

## 📚 Project Structure

```
cbwire-examples/
├── config/           # Application configuration
├── handlers/         # ColdBox event handlers
├── layouts/          # Application layouts
├── models/           # Business logic and services
├── views/            # View templates
├── wires/            # CBWIRE component examples
├── tests/            # Test specifications
└── box.json          # Dependency management
```

## 🎓 Learning Path

We recommend exploring the examples in the following order:

1. Start with **Getting Started** examples to understand core concepts
2. Progress to **Forms** to learn input handling and validation
3. Explore **Template Directives** for advanced UI patterns
4. Study **Advanced** examples for complex scenarios
5. Review **Alpine Integration** for hybrid approaches

## 🤝 Contributing

Contributions are welcome! If you'd like to add new examples or improve existing ones:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-example`)
3. Commit your changes (`git commit -m 'Add amazing example'`)
4. Push to the branch (`git push origin feature/amazing-example`)
5. Open a Pull Request

## 📖 Documentation

For comprehensive CBWIRE documentation, visit:
- **Official Docs**: [cbwire.ortusbooks.com](https://cbwire.ortusbooks.com)
- **GitHub Repository**: [coldbox-modules/cbwire](https://github.com/coldbox-modules/cbwire)
- **ColdBox Platform**: [coldbox.org](https://www.coldbox.org)

## 🐛 Issues & Support

Found a bug or have a question?
- **Report Issues**: [GitHub Issues](https://github.com/grantcopley/cbwire-examples/issues)
- **ColdBox Slack**: Join the #cbwire channel
- **Forums**: [Ortus Community Forums](https://community.ortussolutions.com)

## 📝 License

This project is licensed under the Apache License 2.0. See the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Ortus Solutions** - For creating and maintaining CBWIRE and the ColdBox Platform
- **The ColdBox Community** - For continuous feedback and contributions
- **Livewire** - For inspiring reactive component patterns in web development

---

<div align="center">

**Built with ❤️ using [CBWIRE](https://github.com/coldbox-modules/cbwire) and [ColdBox](https://www.coldbox.org)**

</div>
