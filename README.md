```
    ____        __  _____ __
   / __ \____  / /_/ __(_) /__  _____
  / / / / __ \/ __/ /_/ / / _ \/ ___/
 / /_/ / /_/ / /_/ __/ / /  __(__  )
/_____/\____/\__/_/ /_/_/\___/____/
```

My opinioned dotfiles to set up a dev environment in a **MacOS** machine.
Summary:

- Packages and apps I use by default
- [stows](https://www.gnu.org/software/stow/) all config files
- Sets my MacOS configurations

## Apps

Main apps:

- Terminal: [Wezterm](https://wezfurlong.org/wezterm/)
- Text Editor: [neovim](https://neovim.io/)
- Video: VLC

### Neovim Plugins

TBD

### CLI

All CLI apps are listed in the [Brewfiles](./app/Brewfile*).
CLIs from other sources like `cargo` and `go` are listed in [cli](./scripts/cli.sh) script.

## Installing

TBD

## Testing Stow

Simulate `stow` links

```sh
stow -nSv vim
```
