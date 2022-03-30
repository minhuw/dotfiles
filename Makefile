install-rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup toolchain add nightly

install-pyenv:
	curl https://pyenv.run | bash
	sudo apt-get install -y zlib1g-dev libbz2-dev libssl-dev libffi-dev libreadline-dev libsqlite3-dev

install-meson:
	pip install --user meson

install-ninja:
	sudo ~/scripts/install_ninja.sh

install-brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

install-docker-compose:
	sudo ~/scripts/install_docker_compose.sh

install-docker:
	sudo ~/scripts/install_docker.sh
