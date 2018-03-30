#!/usr/bin/env bash

# Install command line tools
xcode-select --install

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU utilities (those that come with macOS are outdated).
brew install coreutils
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install vim8
brew install vim --with-override-system-vi

# Install cli tools
brew install grep
brew install hyper

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install cask programs
brew cask install hyper
brew cask install visual-studio-code
brew cask install flux
brew cask install spotify
brew cask install google-chrome
brew cask install firefox
brew cask install spectacle


# Remove outdated versions from the cellar.
brew cleanup

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
