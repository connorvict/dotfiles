if status --is-interactive
    set -lx SHELL fish
    keychain --eval --agents ssh --quiet -Q $SSH_KEYS_TO_AUTOLOAD | source
    # keychain --eval --agents gpg --quiet --gpg2 -Q long_key_id_here | source
end
