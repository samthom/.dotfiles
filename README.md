# .dotfiles (my configurations)
=================================
> Name : Sam Thomas
> Full Stack Developer, Nodejs, Mongodb, Golang, Vuejs
> > These configurations are targeted to Linux/Unix machines. Ubuntu, Manjaro, Linux Mint, Arch Linux.
## Main Tools
- Vim (Code editor)
- Zsh (Shell)
- urxvt (Terminal Emulator)
- Chorome (Browser)
- Spotify
- Mailspring
- Slack
- Postman
- Mongodb Compass
- Nodejs
- yarn
- Docker


## Configs
-----------------------------------
- Font(Terminal & Editor) - [Blex Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/Blex/Mono/complete).
- Window Managers - i3wm, Cinnamon, xfce, Gnome
#### ZSH
1. [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
2. [zsh-notify](https://github.com/marzocchi/zsh-notify) for notifiy loing running process in zsh.
3. [colorls](https://github.com/athityakumar/colorls) gem package for beautify the ```ls``` command
```
source $(dirname $(gem which colorls))/tab_complete.sh
alias ls='colorls --sd'
```
_Have to add above config to .zshrc_

4. [thefuck](https://github.com/nvbn/thefuck) for updating the previous shell command.

