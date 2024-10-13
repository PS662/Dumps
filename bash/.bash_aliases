HISTSIZE= 
HISTFILESIZE=
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMANDS$'\n'}history -a; history -c; history -r"

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin
eval "$(tmuxinator completions bash)"

export TEST_DATA_PATH=/opt/Data/
export LLAMA_MODELS_PATH=$HOME/.llama/checkpoints/

# Alias to switch to Intel GPU
alias use-intel-gpu='sudo prime-select intel && echo "Switched to Intel GPU"'

# Alias to switch to NVIDIA GPU
alias use-nvidia-gpu='sudo prime-select nvidia && echo "Switched to NVIDIA GPU"'

# Alias to check which GPU is being used
alias which-gpu='prime-select query && echo "Currently using $(prime-select query) GPU"'

if [ -f ~/.bash_passwords ]; then
    . ~/.bash_passwords
fi
