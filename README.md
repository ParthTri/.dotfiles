# Dot Files

1. Install Apple CLI tools

   ```shell
   xcode-select --install
   ```

2. Cone repo

   ```shell
   git clone https://github.com/ParthTri/.dotfiles.git
   ```

3. Create symlink in Home directory

   ```shell
   ln -s ~/.dotfiles/.zshrc ~/.zshrc
   ln -s ~/.dotfiles/.gotconfig ~/.gitconfig
   ln -s ~/.dotfiles/.vimrc ~/.vimrc
   ```

4. Install Homebrew, and all software in Brewfile

   ```shell
   #Install Homebrew
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   
   # Then pass the Brewfile location...
   brew bundle --file ~/.dotfiles/Brewfile
   ```



## TODO

- Automating symlink and other installs