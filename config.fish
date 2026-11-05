oh-my-posh init fish --config $HOME/.poshthemes/multiverse-neon.omp.json | source
set -U fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Senhas em ~/Desktop/dotfiles/.env (nome=valor). Uso: senha <nome>
function senha
    set -l arquivo ~/Desktop/dotfiles/.env
    if test (count $argv) -eq 0
        grep -v '^#' $arquivo | cut -d= -f1
        return
    end
    set -l valor (grep "^$argv[1]=" $arquivo | cut -d= -f2-)
    if test -z "$valor"
        echo "senha '$argv[1]' não encontrada"
        return 1
    end
    printf '%s' $valor | xclip -selection clipboard
    echo "'$argv[1]' copiada"
end
complete -c senha -f -a "(grep -v '^#' ~/Desktop/dotfiles/.env | cut -d= -f1)"
