apps=(
	#arduino
	clipy # Clipboard manager https://github.com/Clipy/Clipy
	#deepl # Translate faster
	#discord
	docker
	#firefox
	#google-chrome
	#slack
	visual-studio-code
	vlc
	wez/wezterm/wezterm # Terminal https://wezfurlong.org/wezterm
)

mas_apps=(
	"937984704"  # Amphetamine, best keep-awake app
	"1444383602" # Good Notes 5
	"768053424"  # Gappling (svg viewer)
)

install_macos_apps() {
	info "Installing macOS apps..."
	install_brew_casks "${apps[@]}"
}

install_masApps() {
	info "Installing App Store apps..."
	for app in "${mas_apps[@]}"; do
		mas install "$app"
	done
}
