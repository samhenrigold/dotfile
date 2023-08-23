# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# nvm (node) stuff
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# aliases
alias yt-dlp-mp3="yt-dlp -f 'ba' -x --audio-format mp3"
alias yt-dlp-mp4="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'"
alias wayback="wayback_machine_downloader"
alias ql-reset='qlmanage -r; killall Finder'

# Gay it up
echo "love you queen 😘✨"
PS1='%~ $ '