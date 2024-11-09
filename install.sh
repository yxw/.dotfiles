#!/usr/bin/env bash

#set -o errexit
#set -o nounset
#set -o pipefail

. scripts/utils.sh
#. scripts/brew.sh
. scripts/config.sh
. scripts/config-osx.sh

cleanup() {
	err "Last command failed"
	info "Finishing..."
}

main() {
	info "Installing ..."

	info "################################################################################"
	info "Homebrew Packages"
	info "################################################################################"
	#. scripts/brew.sh

	#post_install_packages
	success "Finished installing Homebrew packages"

	info "################################################################################"
	info "Configuration"
	info "################################################################################"

	setup_osx
	success "Finished configuring MacOS defaults. NOTE: A restart is needed"

	#stow_dotfiles
	success "Finished stowing dotfiles"

	#info "################################################################################"
	#info "SSH Key"
	#info "################################################################################"
	#setup_github_ssh
	#success "Finished setting up SSH Key"

	success "Done"
	info "System might needs to restart."

	#info "System needs to restart. Restart?"

	#select yn in "y" "n"; do
	#	case $yn in
	#	y)
	#		sudo shutdown -r now
	#		break
	#		;;
	#	n) exit ;;
	#	esac
	#done
}

#trap cleanup SIGINT SIGTERM ERR EXIT

main
