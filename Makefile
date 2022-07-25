install-rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup toolchain add nightly

install-haskell:
	curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

install-pyenv:
	curl https://pyenv.run | bash
	sudo apt-get install -y zlib1g-dev libbz2-dev libssl-dev libffi-dev libreadline-dev libsqlite3-dev

install-pdm:
	curl -sSL https://raw.githubusercontent.com/pdm-project/pdm/main/install-pdm.py | python3 -

install-meson:
	pip install --user meson

install-ninja:
	sudo ~/.scripts/install_ninja.sh

install-brew:
	curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash

install-docker-compose:
	sudo ~/.scripts/install_docker_compose.sh

install-docker:
	sudo ~/.scripts/install_docker.sh

install-aws-cli:
	sudo ~/.scripts/install_aws_cli.sh
