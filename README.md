# ToastPlugin

ToastPlugin is a Godot plugin that allows you to display native Android Toast messages from your Godot project. It connects toast callbacks via signals. The callbacks might not work perfectly on Android APIs under 30.

Source code:
https://github.com/leparlon/GodotToastPlugin
(this [file](https://github.com/leparlon/GodotToastPlugin/blob/main/AndroidProject/toastplugin/src/main/java/com/pgcn/toastplugin/ToastPlugin.java) is all that matters)

## Features

- Display native Android Toast messages
- Supports toast callbacks via signals
- Customizable toast duration and position

## Requirements

- Godot 4.2 or higher
- Android API level 24 or higher (API level 30 recommended)

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
