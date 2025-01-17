#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec sway
#fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# editirmations, etc.) must go above this block; everything else may go below.
ZSH_DISABLE_COMPFIX="true"
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# 2023-12-08 pywal
# 2024-01-08 Monitor Resolution

wal --cols16 lighten --vte -R -s -w

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This edits repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux zsh-syntax-highlighting git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Shell config
#

alias editzsh="sudo -Es nvim $HOME/.zshrc"
alias compzsh="source $HOME/.zshrc"
alias c="wipeclean"
alias myalias="grep --only-matching '^alias\s\w*' .zshrc | less" 
alias fonts="fc-list | cut -f2 -d: | sort -u | less -r"
alias xprop="$HOME/xpropawk.sh"
alias nvim="sudo -Es nvim"

# Linux-Dotfiles Repository




alias pushdots="$HOME/repository/Linux-Dotfiles/repositoryupdate.sh"
alias pullenv="$HOME/repository/Linux-Dotfiles/updatesys.sh && editzsh"
alias pullwl="$HOME/repository/Linux-Dotfiles/updatesyswl.sh"
alias pullx="$HOME/repository/Linux-Dotfiles/updatesysx.sh"

# Timetracking

alias trackeroop="watch -n.1 python $HOME/detectCamOn.py"
alias work="upwork && sleep 5 && slack && sleep && google-chrome-stable  && sleep 5 && trackeroop"

# bootloader configs

alias editgrub="sudo -Es nvim /etc/default/grub"
alias compgrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Terminal
#

alias editalacritty="sudo -Es nvim $HOME/.config/alacritty/alacritty.yml"
alias editst="sudo -Es nvim $HOME/.config/suckless/st/config.def.h"
alias compst="cd $HOME/.config/suckless/st && sudo cp st/config.def.h st/config.h && cd st && sudo make clean install && cd $HOME"

# servers

alias shizuku="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias sucode="sudo code --user-data-dir=~/root"
alias droidmote="droidmote 2302 password"
alias pyserver="/bin/python $HOME/Python-Projects/server/server.py"

# Xorg config
#

alias editx="sudo -Es nvim $HOME/.xinitrc"
alias editdwm="sudo -Es nvim $HOME/.config/suckless/dwm/config.def.h"
alias compdwm="cd $HOME/.config/suckless/dwm && sudo rm config.h && sed -i '/SchemeUrg/d' $HOME/.cache/wal/colors-wal-dwm.h && sudo make clean install && cd $HOME"
alias exitdwm="pkill -15 Xorg"
alias waldwm="sudo -Es nvim $HOME/.cache/wal/colors-wal-dwm.h"

# Wayland
#

alias editsway="sudo -Es nvim $HOME/.config/sway/config"
alias editwbar="sudo -Es nvim $HOME/.config/waybar/config"
alias editwbars="sudo -Es nvim $HOME/.config/waybar/style.css"
alias barupdate="sudo /bin/python $HOME/Python-Projects/shellupdate/updatebartui.py"
alias wipewofi="sudo $HOME/Linux-Dotfiles/wofifilter.sh"
alias editmako="sudo -Es nvim $HOME/.config/mako/config"

# Application configs

alias editnvim="sudo -Es nvim $HOME/.config/nvim/init.vim"
alias edittmux="sudo -Es nvim $HOME/.tmux.conf"
alias btop="btop --utf-force"
alias mupdf="mupdf -I -r 140 -C 000000"
alias book="mupdf -I -r 140 -C 000000 $HOME/Books/*"
alias dance="mpv $HOME/Videos/GIF/cockroach.gif & mpv $HOME/Videos/GIF/t-rex-frog.gif"

# Python Scripts

alias makepyvenv="python -m venv ."
alias editpip="python -m ensurepip --upgrade"
alias calctui="/bin/python $HOME/repository/Python-Projects/calculator/calctui.py"
alias calcgui="/bin/python $HOME/repository/Python-Projects/calculator/calcgui.py"
alias editpy="$HOME/repository/Linux-Dotfiles/updatepython.sh"
alias autoclick="/bin/python $HOME/repository/Python-Projects/cursor/autoclick.py"
alias afkpress="/bin/python $HOME/repository/Python-Projects/cursor/afkpress.py"
alias afkmove="/bin/python $HOME/repository/Python-Projects/cursor/afkmove.py"
alias idlescroll="/bin/python $HOME/repository/Python-Projects/cursor/afkscroll.py"
alias typespam="/bin/python $HOME/repository/Python-Projects/spambot/typespam.py"
alias filespam="/bin/python $HOME/repository/Python-Projects/spambot/filespam.py"
alias keylogger="/bin/python $HOME/repository/Python-Projects/keylogger/keylogger.py"
alias birthday="/bin/python $HOME/repository/Python-Projects/birthdaywisher/happybirthday.py"
alias meditate="/bin/python $HOME/repository/Python-Projects/meditation/meditate.py"
alias voassist="/bin/python $HOME/repository/Python-Projects/voiceassistant/voasst.py"
alias votyper="/bin/python $HOME/repository/Python-Projects/voiceassistant/voicetyper.py"
alias tts="/bin/python $HOME/repository/Python-Projects/voiceassistant/TTS.py"
alias meetcli="$HOME/repository/Python-Projects/selenium/meetcli.sh"
alias meetgui="$HOME/repository/Python-Projects/selenium/meetgui.sh"
alias netspeed="/bin/python $HOME/repository/Python-Projects/internetspeed/speedprinter.py"
alias wolfram="/bin/python $HOME/repository/Python-Projects/wolramalpha/apicaller.py"
alias twitterbot="$HOME/repository/Python-Twitter-Bot/twitterbot.sh"
alias redditbot="$HOME/repository/Python-Reddit-Bot/redditbot.sh"
alias discordbot="$HOME/repository/Python-Discord-bot/discordbot.sh"

# ADB 
#

alias adbcheck="$HOME/repository/Android-Projects/adb-linux/adbcheck.sh"
alias adbrestart="$HOME/repository/Android-Projects/adb-linux/adbrestart.sh"

# Scrcpy
#

alias scrcpy="$HOME/repository/Android-Projects/adb-linux/scrcpystart.sh"
alias scrcpyrec="$HOME/repository/Android-Projects/adb-linux/scrcpyrec.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Created by `pipx` on 2024-07-24 12:50:46
export PATH="$PATH:/home/wardoflores/.local/bin"
