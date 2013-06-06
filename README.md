# Moodswings

Moodswings makes it easy to change your development configs from the terminal.

## Basic Usage

1.  Install moodswings.  `gem install moodswings`

2.  Create folder in ~/.moodswings

3.  Create new file <name>.mood (see examples below)

4.  Run `moodswing <name>`

## Examples

~/.moodswings/dark.mood

```ruby
desktop_background "~/Pictures/Wallpapers/really-dark-pic.jpg"

open_app "MenuBarFilter"
```

[MenuBarFilter](http://eece.github.io/MenuBarFilter/)

## Contributing

There are only helper methods for OSX right now, and they use osascript to execute commands.  Feel free to create more helper methods for different platforms, or improve on the ones currently existing.