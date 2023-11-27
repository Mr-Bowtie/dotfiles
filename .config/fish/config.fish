

export PATH=/home/mr_bowtie/.rbenv/shims:/home/mr_bowtie/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/var/lib/snapd/snap/bin:/usr/local/go/bin:/usr/local/go/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/mr_bowtie/.gem/ruby/2.7.0/bin:/home/mr_bowtie/Documents/shell_scripts:/home/mr_bowtie/.luaver:/home/mr_bowtie/.rbenv:/home/mr_bowtie/scripts:/home/mr_bowtie/.local/share/nvm
export FLYCTL_INSTALL="/home/mr_bowtie/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"
export VISUAL=nvim
export EDITOR="$VISUAL"
export BROWSER=firefox
status --is-interactive; and rbenv init - fish | source
fish_vi_key_bindings

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

# installing from official repos 
function ofinstall --description "Install from offical repos and save updated aura package list"
    sudo aura -Sy $argv
    sudo aura -B
    sudo aura -Bc 5
    cp -r /var/cache/aura/states/ ~/.config/aura/
    cd ~/.config/aura/
    git add .
    git commit -m 'update package list'
    git push
    cd ~
end

function aurinstall --description "Install from AUR and save updated aura package list"
    sudo aura -Ac $argv
    sudo aura -B
    sudo aura -Bc 5
    cp -r /var/cache/aura/states/ ~/.config/aura/
    cd ~/.config/aura/
    git add .
    git commit -m 'update package list'
    git push
    cd ~
end

function gac --description "git add all files and commit with provided message"
    git add -A
    git commit -m $argv
end

function restart_echo_dev --description "rebuild and run an interactive docker container to see fresh changes for Echo Chamber testing"
  docker build ./ -t 'echo_chamber:testing'
  docker run -it -e APP_ENV=development echo_chamber:testing
end

#bobthefish options 
set -g theme_display_ruby yes
set -g theme_display_vi yes
set -g theme_date_format "+%H:%M"
set -g theme_color_scheme solarized
set -g theme_nerd_fonts yes
set -g theme_display_ruby yes
set -g theme_title_display_path yes
set -g theme_title_use_abbreviated_path no

set LS_COLORS "di=01;33"
export LS_COLORS

#runs transset-df to make terminal windows transparent when composite manager (xcompmgr) is running : default 75% (which is perfect)
#transset-df --id "$WINDOWID" >/dev/null

alias ll "exa -lahH --icons --git"
alias lt "exa -lahHT --icons --git"
alias grab "scrot '%F_%H-%M.png' -s -e 'mv \$f /home/mr_bowtie/pictures/screenshots/'"
alias nmlist "nmcli device wifi list"
alias nmconnect-house "nmcli device wifi connect E0:22:04:70:85:66 password BENDresterACEpre"
alias nmconnect-ext "nmcli device wifi connect 90:9A:4A:A1:64:E1 password BENDresterACEpre"
alias qinit "git init && git add . && git commit -m 'inital commit'" #only works if a file has been created in the directory
alias startup "ruby ~/documents/shell_scripts/startup_script.rb"
alias steam-picker " ruby ~/programming/steam-selector/lib/main.rb"
alias ofupdate "sudo aura -Syyu"
alias aurupdate "sudo aura -Au"
alias pom "ruby ~/programming/side-projects/pomodoro/main.rb"
alias wmswap "killall xfwm4 && awesome &"
alias byobu-rails "BYOBU_WINDOWS=rails-project byobu"
alias vim nvim
alias weather "curl wttr.in"
alias insurgence "wine ~/Downloads/Pokemon\ Insurgence\ 1.2.7\ Core/Game.exe"
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias lazy-config="lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias rails_env_builder="source /home/mr_bowtie/scripts/new_rails_env"
alias rdev_up="env RAILS_ENV=development docker compose up"
alias rtest_up="env RAILS_ENV=test docker compose up"
alias rdown="docker compose down"
alias td_proj="todo.sh projectview"
alias td="todo.sh"
alias td_na="todo.sh note add"
alias td_ne="todo.sh note edit"
alias td_ns="todo.sh note show"
alias show_breakman_report="firefox --new-window tmp/brakeman.html"
alias fish_config="nvim ~/.config/fish/config.fish"
