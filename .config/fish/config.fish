fish_vi_key_bindings

# export PATH="$PATH:$HOME/.rbenv/shims/"
export VISUAL=nvim
export EDITOR="$VISUAL"
export SDKMAN_DIR="$HOME/.sdkman"
# export GPG_TTY=$(tty)
export NVM_DIR="$HOME/.nvm"
export GOBIN="$GOPATH/bin"

# ====== old ZSH configs that do not currently work ============
# [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# export PATH=$PATH:~/go/bin
# export PATH="$PATH:/usr/local/bin/elixir"

# Set PATH, MANPATH, etc..., for Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"


#bobthefish options (unused currently)
# set -g theme_display_ruby yes 
# set -g theme_display_vi yes
# set -g theme_date_format "+%H:%M"
# set -g theme_color_scheme solarized
# set -g theme_nerd_fonts yes
# set -g theme_display_ruby yes
# set -g theme_title_display_path yes
# set -g theme_title_use_abbreviated_path no

set -g __fish_sdkman_init "/Users/iann/.sdkman/bin/sdkman-init.sh"

# ===== Aliases ===============================================
alias ll="exa -lah --icons --color=always --sort=type"
alias lt="exa -lahT --icons --color=always"
alias start-driver-staging="FONTAWESOME_NPM_AUTH_TOKEN=B3DC40D3-7291-43D9-8F83-4FF4AF389EC0 npx ionic serve --configuration staging"
alias ssh-addall="ssh-add --apple-use-keychain ~/.ssh/id_ed25519 ~/.ssh/id_ed25519_personal"
alias create-secrets='mkdir secrets; cp $HOME/.config/fish/secrets/GITHUB_USER secrets; cp $HOME/.config/fish/secrets/GITHUB_TOKEN secrets'
alias update-gh-token='rm secrets/GITHUB_TOKEN && touch secrets/GITHUB_TOKEN && echo "$GITHUB_PACKAGES_PAT" >> secrets/GITHUB_TOKEN'
# get on the box
alias gotb="aws sso --profile es login && aws ssm start-session --profile=es --target"
alias re-zup="RAILS_ENV=development docker compose down && RAILS_ENV=development docker compose up"
alias zup="RAILS_ENV=development RACK_ENV=development docker compose up"
alias ztup-guard="docker compose -f docker-compose-test.yml up"
alias ztup-system="SYSTEM_TESTING=true docker compose -f docker-compose-test.yml up"
alias ztup="docker compose -f docker-compose-test.yml up"
alias zbuild="RAILS_ENV=development RACK_ENV=development docker compose up --build"
alias ztbuild="docker compose -f docker-compose-test.yml build"
alias zdown="docker compose down && docker compose -f docker-compose-test.yml down"
alias zrun-test="docker exec -it delivery-admin-test bundle exec spring rspec"
alias zextract="docker cp delivery-admin-test:app/tmp/screenshots ~/Pictures"
alias solpath="GEM_HOME='$HOME/.local/share/nvim/lsp_servers/solargraph' GEM_PATH='$HOME/.local/share/nvim/lsp_servers/solargraph' "
alias gtrun="docker compose -f docker-compose.test.yml up --build --abort-on-container-exit --exit-code-from test"
alias gbuild="docker compose -f docker-compose.local.yml up --build"
alias gup="docker compose -f docker-compose.local.yml up"
alias gdeploy="cdk deploy -c app=Geodata -c release=staging --profile-es"
alias config="git --git-dir=$HOME/.cfg --work-tree=$HOME"
alias lazy-config="lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME"
alias rbenv-doctor="curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash"
alias docker_clean_images='docker rmi $(docker images -a --filter=dangling=true -q)'
alias docker_clean_ps='docker rm $(docker ps --filter=status=exited --filter=status=created -q)'
alias docker_remove_all_images='docker rmi $(docker images -a -q)'
alias serve-geteatstreet='ng serve --ssl true --ssl-key ~/Programming/eatstreet/eatstreet/master/web/local.eatstreet.com-key.pem --ssl-cert ~/Programming/eatstreet/eatstreet/master/web/local.eatstreet.com.pem'
alias commits_list='cd ~/Programming/eatstreet/eatstreet/master/web/tools/ && COMMIT_TO_S3=true python3 load-deploy-commits.py deploy-2023-09-15 deploy-2023-09-08'
alias td_proj="todo.sh projectview"
alias td="todo.sh"
alias td_na="todo.sh note add"
alias td_ne="todo.sh note edit"
alias td_ns="todo.sh note show"
alias dev-config="git --git-dir=$HOME/.cfg_new --work-tree=$HOME"
alias dev-lazy-config="lazygit --git-dir=$HOME/.cfg_new/ --work-tree=$HOME"
alias fish_config="nvim ~/.config/fish/config.fish"

function es_run_dev
    cd ~/Programming/eatstreet/eatstreet/master/web/WebContent/redesign/
    nvm install 'v14.21.3'
    nvm use
    npm run dev:watch
end

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

# Setting PATH for Python 3.11
# The original version is saved in /Users/iann/.config/fish/config.fish.pysave
set -x PATH "/Library/Frameworks/Python.framework/Versions/3.11/bin" "$PATH"
status --is-interactive; and rbenv init - fish | source
pyenv init - | source

thefuck --alias | source

function testing
    if bw unlock
        echo your in
        echo "you're out"
    end
end

function es_sass
    if pwd | grep web/WebContent/redesign
        sass app.sass --style=compressed >css/app.css
        nvm use
        npm run dev
    else
        echo 'please navigate to web/WebContent/redesign in the ES monolith'
    end
end

function es_sass_mobile
    if pwd | grep web/WebContent/redesign
        sass app-mobile.sass --style=compressed >css/app-mobile.css
        nvm use
        npm run dev
    else
        echo 'please navigate to web/WebContent/redesign in the ES monolith'
    end
end

function tdls
  todo.sh ls $argv | sort -n
end 


