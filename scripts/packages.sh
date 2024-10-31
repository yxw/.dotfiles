# TODO: we should use a Brewfile
taps=(
   homebrew/cask
   homebrew/cask-fonts
   homebrew/core
   birdayz/kaf
   wez/wezterm
   xo/xo
)

packages=(
   bat        # https://github.com/sharkdp/bat
   bandwhich  # https://github.com/imsnif/bandwhich
   bottom     # https://github.com/ClementTsang/bottom
   cmake
   ctags
   # Comparable to jq/yq, but supports JSON, YAML, TOML, XML and CSV with zero runtime dependencies.
   curl        # https://github.com/TomWright/dasel
   # `du` in rust, more intuitive
   dasel      # https://github.com/bootandy/dust
   # modern `ls`
   dust        # https://github.com/eza-community/eza
   # A command-line fuzzy finder
   eza        # https://github.com/junegunn/fzf
   # modern `find`
   fzf        # https://github.com/sharkdp/fd
   fd         
   # syntax-highlighting pager for git, diff, grep
   gettext      # https://github.com/dandavison/delta
   git-delta
   gpg
   go
   graphviz   # https://graphviz.org/
   grpcurl    # https://github.com/fullstorydev/grpcurl
   # modern CLI HTTP client for API
   httpie     # https://github.com/httpie/httpie
   # CLI JSON viewer 
   imagemagick # https://github.com/PaulJuliusMartinez/jless
   jless      
   jq
   k9s        # https://github.com/derailed/k9s
   kaf
   kubernetes-cli # kubectl
   # CLI benchmarking tool
   hyperfine  # https://github.com/sharkdp/hyperfine
   lazydocker # https://github.com/jesseduffield/lazydocker
   # CLI file manager
   lf         # https://github.com/gokcehan/lf
   # text web browser
   libpq      # https://lynx.invisible-island.net/
   lynx
   # Mac App Store CLI
   mas        # https://github.com/mas-cli/mas
   #minikube
   neovim
   node
   nmap
   openjdk
   openssl
   ## Pinentry for GPG on Mac
   ##pinentry-mac
   #postgresql

   p7zip

   # modern `ps` in rust
   procs      # https://github.com/dalance/procs/
   python3
   protobuf
   # morder `grep` (rust)
   ripgrep    # https://github.com/BurntSushi/ripgrep
   rustup
   # modern `sed`
   sd         # https://github.com/chmln/sd
   # shellcheck - A shell script static analysis tool
   shellcheck # https://github.com/koalaman/shellcheck
   stow
   # Lua code formatter
   stylua     # https://github.com/JohnnyMorganz/StyLua
   telnet
   # Universal CLI for SQL databases
   usql      # https://github.com/xo/usql
   # CLI for WebSockets
   websocat   # https://github.com/vi/websocat
   wget
   zsh
   # zsh plugin manager
   zinit      # https://github.com/zdharma-continuum/zinit
   # z - better `cd`
   zoxide     # https://github.com/ajeetdsouza/zoxide
)

install_packages() {
   info "Configuring taps"
   apply_brew_taps "${taps[@]}"

   info "Installing packages..."
   install_brew_formulas "${packages[@]}"

   info "Cleaning up brew packages..."
   brew cleanup
}

post_install_packages() {
   info "Installing fzf bindings"
   # shellcheck disable=SC2046
   $(brew --prefix)/opt/fzf/install
}
