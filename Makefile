install-rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup toolchain add nightly

install-pyenv:
	curl https://pyenv.run | bash

install-brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

install-docker-compose:
	sudo ~/scripts/install_docker_compose.sh

install-docker:
	sudo ~/scripts/install_docker.sh
