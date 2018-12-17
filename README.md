# AJ's dotfiles

This is my all-singing all-dancing bootstrap script for setting up a new macOS machine.

## Installation steps

```
cd ~/
mkdir .dotfiles
cd .dotfiles
git clone https://github.com/adrianjoiner/dotfiles.git
cd .dotfiles/dotfiles
sh bootstrap.sh
```

Once run the following manual steps will need to be undertaken (mainly because I have not gotten round to scripting them ;-))

### In iTerm

- Select the Solarised Dark Theme (may have to download it)
- Add profiles for remote machines
- Add automatic profile swithing
- Instal shell integration scripts in relevant machines
- Change font to 14pt Source Code Pro for Powerline
- Enable "natural text selection" - iTerm → Preferences → Profiles → Keys → Load Preset... → Natural Text Editing

### In VS Code

Installing a patched font can mess up the integrated terminal in VS Code unless you use the proper settings. So, in VS Code goto settings (CMD + ,) and add or edit the following values: 

```
"terminal.integrated.fontFamily": "Source Code Pro for Powerline"
terminal.integrated.fontSize": 14
```

## Generate an ssh-key if needed

[Info here](https://confluence.atlassian.com/bitbucketserver/creating-ssh-keys-776639788.html)

... and I've probably missed a lot of stuff
