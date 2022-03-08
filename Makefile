install-rust:
	curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
	rustup toolchain add nightly

install-pyenv:
	curl https://pyenv.run | bash

