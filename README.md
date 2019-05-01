# .dotfiles (my configurations)
> Name : Sam Thomas
> Full Stack Developer, Nodejs, Mongodb, Golang, Vuejs
 > These configurations are targeted to Linux/Unix machines. Ubuntu, Manjaro, Linux Mint, Arch Linux.
## Main Tools
These are the tools independent to the machine am using. These tools are the basics of my daily work flow. There is also distro/server specific tools I use.
- Vim (Code editor)
- Zsh (Shell)
- urxvt (Terminal Emulator)
- Chrome (Browser)
- Spotify
- Mailspring
- Slack
- Postman
- Mongodb Compass
- Nodejs
- yarn
- Docker
- Tmux (Terminal Multiplexer)

## Specific Tools (Machine specific/Distro)
- i3wm
- i3-bar

## Configs
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
5. [fzf](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/fzf) Fuzzy file search.
6. [Base16](https://github.com/chriskempson/base16-shell) for applying theme to the terminal. First we need to install base16 package and then can use this script to apply the theme.

#### Vim
> _pathogen.vim_ - Package Manager for vim
1. base16-vim
2. ctrlp.vim
3. nerdtree
4. nerdtree-git-plugin
5. vim-airline
6. vim-airline-themes
7. vim-devicons
8. vim-gitgutter
9. vim-wakatime
10. yajs.vim
11. surround.vim
12. commentary.vim
Besides above plugins there's only very small amount customization I do like using _jj_ as my exit and _space_ bar as _<leader>_ key.

#### Urxvt
Coming soon ...
