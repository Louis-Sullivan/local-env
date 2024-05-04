# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# export PATH="${HOMEBREW_PREFIX}/opt/openssl/bin:$PATH"
# eval $(/opt/homebrew/bin/brew shellenv)

function code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*; }

function gac {
  if [[ $# -eq 0 ]]
    then git commit --no-verify && git push origin HEAD
  else
    git commit --no-verify -m "$*" && git push origin HEAD
  fi
}

alias istart="yarn && yarn start"
alias ilint="yarn lint --fix"
alias iyalc="yarn build && yalc publish && yalc push"
alias ibase="git fetch origin main && git rebase -i origin/main"
alias iyarn="yarn upgrade-interactive --latest"
alias imain="git checkout main && git pull"
alias ipush="git push origin HEAD --force-with-lease"

# export PATH="$(yarn global bin):$PATH"

# # Setting PATH for Python 2.7
# # The original version is saved in .bash_profile.pysave
export PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"

PATH="/Library/Frameworks/Python.framework/Versions/3.1/bin:${PATH}" 
export PATH

# export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# eval "$(direnv hook "$(xargs basename <<<"${SHELL}")")"
eval "$(direnv hook zsh)"

source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
