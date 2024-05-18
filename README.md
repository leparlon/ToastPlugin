# ToastPlugin

ToastPlugin is a Godot plugin that allows you to display native Android Toast messages from your Godot project. It connects toast callbacks via signals and supports different Android APIs. Note that callbacks might not work perfectly on Android APIs under 30.

## Features

- Display native Android Toast messages
- Supports toast callbacks via signals
- Customizable toast duration and position

## Requirements

- Godot 4.2 or higher
- Android API level 24 or higher (API level 30 or higher for perfect callback functionality)

## Installation

1. Copy the `addons/ToastPlugin` folder into your Godot project's `addons` directory.
2. Enable the plugin in your project settings: `Project -> Project Settings -> Plugins`.

## Usage

### Basic Usage

To display a simple toast message, you can use the `show_toast` method. 

```gd
if Engine.has_singleton("ToastPlugin"):
    var toast_plugin = Engine.get_singleton("ToastPlugin")
    toast_plugin.show_toast("Hello, World!")
