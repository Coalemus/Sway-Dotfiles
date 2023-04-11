#if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec sway
#fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
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

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

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
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(archlinux zsh-syntax-highlighting) # git

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
alias c="clear"
alias myalias="grep --only-matching '^alias\s\w*' .zshrc | less" 
alias fonts="fc-list | cut -f2 -d: | sort -u | less -r"
alias xprop="/home/joey/xpropawk.sh"
alias nvim="sudo -Es nvim"

# Dotfile automations

alias pushdots="sudo /home/joey/wardoflores/Linux-Dotfiles/updaterepo.sh"
alias pullenv="sudo /home/joey/wardoflores/Linux-Dotfiles/updatelinux.sh && makezsh"
alias pullwl="sudo /home/joey/wardoflores/Linux-Dotfiles/updatewayland.sh"
alias pullx="sudo /home/joey/wardoflores/Linux-Dotfiles/updatexorg.sh"

# Update automation

alias makepy="/home/joey/wardoflores/Linux-Dotfiles/updatepython.sh"

# System configs

alias confx="sudo -Es nvim /home/joey/.xinitrc"

alias confzsh="sudo -Es nvim /home/joey/.zshrc"
alias makezsh="source /home/joey/.zshrc"

alias confgrub="sudo -Es nvim /etc/default/grub"
alias makegrub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# Window manager configs

alias confsway="sudo -Es nvim /home/wardoflores/.config/sway/config"
alias confdwm="sudo -Es nvim /home/wardoflores/dwm-6.4/config.def.h"
alias makedwm="sudo cp /home/wardoflores/dwm-6.4/config.def.h /home/wardoflores/dwm-6.4/config.h && cd dwm-6.4 && sudo make clean install && cd /home/wardoflores/"

# Application configs

alias confalacritty="sudo -Es nvim .config/alacritty/alacritty.yml"
alias confst="sudo -Es nvim st-0.8.5/config.def.h"
alias makest="sudo cp st-0.8.5/config.def.h st-0.8.5/config.h && cd st-0.8.5 && sudo make clean install"

alias confmako="sudo -Es nvim .config/mako/config"

alias confwbar="sudo -Es nvim .config/waybar/config"
alias confwbars="sudo -Es nvim .config/waybar/style.css"
alias barupdate="sudo /bin/python /home/joey/wardoflores/Python-Projects/shellupdate/updatebartui.py"

alias wipewofi="sudo /home/joey/wardoflores/Linux-Dotfiles/wofifilter.sh"

alias btop="btop --utf-force"
alias upwork="/opt/Upwork/upwork"

alias shizuku="adb shell sh /storage/emulated/0/Android/data/moe.shizuku.privileged.api/start.sh"
alias sucode="sudo code --user-data-dir=~/root"

# Server automation

alias pyserver="/bin/python /home/joey/wardoflores/Python-Projects/server/server.py"

# Python Scripts

alias calctui="/bin/python /home/joey/wardoflores/Python-Projects/calculator/calctui.py"
alias calcgui="/bin/python /home/joey/wardoflores/Python-Projects/calculator/calcgui.py"

# Autoinput scripts

alias autoclick="/bin/python /home/joey/wardoflores/Python-Projects/cursor/autoclick.py"
alias afkpress="/bin/python /home/joey/wardoflores/Python-Projects/cursor/afkpress.py"
alias afkmove="/bin/python /home/joey/wardoflores/Python-Projects/cursor/afkmove.py"
alias idlescroll="/bin/python /home/joey/wardoflores/Python-Projects/cursor/afkscroll.py"
alias typespam="/bin/python /home/joey/wardoflores/Python-Projects/spambot/typespam.py"
alias filespam="/bin/python /home/joey/wardoflores/Python-Projects/spambot/filespam.py"
alias keylogger="/bin/python /home/joey/wardoflores/Python-Projects/keylogger/keylogger.py"

# 

alias birthday="/bin/python /home/joey/wardoflores/Python-Projects/birthdaywisher/happybirthday.py"
alias meditate="/bin/python /home/joey/wardoflores/Python-Projects/meditation/meditate.py"

# Python API scripts

alias voassist="/bin/python /home/joey/wardoflores/Python-Projects/voiceassistant/voasst.py"
alias votyper="/bin/python /home/joey/wardoflores/Python-Projects/voiceassistant/voicetyper.py"
alias tts="/bin/python /home/joey/wardoflores/Python-Projects/voiceassistant/TTS.py"
alias meetcli="/home/joey/wardoflores/Python-Projects/selenium/meetcli.sh"
alias meetgui="/home/joey/wardoflores/Python-Projects/selenium/meetgui.sh"

# Python Bot API Scripts

alias netspeed="/bin/python /home/joey/wardoflores/Python-Projects/internetspeed/speedprinter.py"
alias wolfram="/bin/python /home/joey/wardoflores/Python-Projects/wolramalpha/apicaller.py"

# Python Social bot API Scripts

alias twitterbot="/home/joey/wardoflores/Python-Twitter-Bot/twitterbot.sh"
alias redditbot="/home/joey/wardoflores/Python-Reddit-Bot/redditbot.sh"
alias discordbot="/home/joey/wardoflores/Python-Discord-bot/discordbot.sh"

# ADB 

alias adbcheck="/home/joey/wardoflores/Android-Projects/adb-linux/adbcheck.sh"
alias adbrestart="/home/joey/wardoflores/Android-Projects/adb-linux/adbrestart.sh"

# Scrcpy

alias scrcpystart="/home/joey/wardoflores/Android-Projects/adb-linux/scrcpystart.sh"
alias scrcpyrec="/home/joey/wardoflores/Android-Projects/adb-linux/scrcpyrec.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
