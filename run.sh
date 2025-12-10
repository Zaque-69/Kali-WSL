#!/bin/bash

set -e

# Update the system
sudo apt update && \
sudo apt upgrade -y && \

# Cybersecurity packages
sudo apt install \
  aircrack-ng \
  apktool \
  binwalk \
  chromium \
  curl \
  dex2jar \
  exiftool \
  ffuf \
  file \
  fish \
  foremost \
  gdb \
  geany \
  git \
  hashcat \
  jd-gui \
  john \
  lm-sensors \
  nmap \
  p7zip \
  pip \
  pngcheck \
  pngcrush \
  sherlock \
  steghide \
  thunar \
  tshark \
  wget -y && \

# Python3 libraries
pip3 install customtkinter beautifulsoup4 librosa pillow requests setuptools --break-system-packages

# Ruby packages
sudo apt install -y ruby ruby-dev
sudo gem install zsteg

# Terminal configuration
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install IlanCosman/tide
tide configure --auto --style=Lean --prompt_colors='True color' --show_time='24-hour format' --lean_prompt_height='Two lines' --prompt_connection=Disconnected --prompt_spacing=Sparse --icons='Few icons' --transient=Yes

# Github repos
git clone https://github.com/dylanaraps/neofetch
cd neofetch
sudo make install
cd ..
sudo rm -rf neofetch

# Others
rm ~/.bashrc && cp .bashrc ~/
rm ~/.config/fish/config.fish && cp ./config.fish ~/.config/fish/
