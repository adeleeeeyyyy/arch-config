function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
end
alias jhic-ssh="ssh 32479-3618@gate.jagoan.cloud -p 3022"
alias pamcan pacman
alias ls 'eza --icons'
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias q 'qs -c ii'
alias aapanel="ssh root@192.168.1.28"
alias aapanel-online="ssh root@ssh-aapanel.synchronizeteams.my.id"
alias dock-ssh="ssh root@dock-ssh.synchronizeteams.my.id"
alias akta="adb pull '/sdcard/kk_akta/*' ~/Downloads/akta_kk/"
alias apus="adb shell rm '/sdcard/kk_akta/*'"
alias apusin="rm '~/Downloads/akta_kk/*'"
alias sistem="sudo systemctl"
alias apdet="sudo pacman -Syu"
alias ambil="git clone"
alias panen="npm i"
alias mulai="php artisan serve"
alias migret="php artisan migrate"
alias pres="php artisan migrate:fresh"
alias kon="php artisan make:controller"
alias model="php artisan make:model"
alias meki="php artisan make:migration"
alias donlot="sudo pacman -Sy"
alias sail="./vendor/bin/sail"
alias larapel="composer create-project laravel/laravel"
alias osu!=/opt/osu!/osu.AppImage
alias pas="php artisan serve"
alias pap="php artisan optimize"
# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
