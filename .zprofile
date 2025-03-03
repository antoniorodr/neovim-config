
eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH=/opt/homebrew/bin:$PATH
# Created by `pipx` on 2024-11-09 11:22:18
export PATH="$PATH:/Users/antonio/.local/bin"

# Setting PATH for Python 3.13
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.13/bin:${PATH}"
export PATH

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
