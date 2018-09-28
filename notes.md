All you need to do is to remove the alias definitions from ~/.zshrc into the file ~/.zsh_aliases and replace the multiple alias commands in ~/.zshrc by:

. ~/.zsh_aliases
You can use the same technique for other sections of ~/.zshrc: for instance, you may find it convenient to move any function definitions into ~/.zsh_functions.