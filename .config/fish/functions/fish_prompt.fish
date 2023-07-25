function fish_prompt
    if test -n "$SSH_TTY"
        echo -n (set_color brred)"$USER"(set_color white)'@'(set_color yellow)(prompt_hostname)' '
    end

    echo -n (set_color blue)(prompt_pwd --full-length-dirs=2)' '

    set_color -o
    if fish_is_root_user
        echo -n (set_color red)'# '
    end

    if rbenv local >/dev/null 2>&1
        echo -n (set_color red)\ue21e' '(rbenv local)' '
    else
        echo -n (set_color yellow)\ue21e' '(rbenv global)' '
    end

    echo -n (set_color red)'❯'(set_color yellow)'❯'(set_color green)'❯ '
    set_color normal
end

function local_ruby

end

function git_repo

end
