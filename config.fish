

export PATH=/home/admin/.local/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/lib/jvm/default/bin:/var/lib/snapd/snap/bin:/usr/local/go/bin:/home/admin/.rvm/bin:/usr/local/go/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/admin/.gem/ruby/2.7.0/bin:/home/admin/Documents/shell_scripts:/home/admin/.rvm/bin:/home/admin/.luaver
export VISUAL=vim 
export EDITOR="$VISUAL"

#vi-key bindings 
fish_vi_key_bindings

function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

#bobthefish options 
set -g theme_display_ruby yes 
set -g theme_display_vi yes
set -g theme_color_scheme solarized
set -g theme_date_format "+%H:%M"


