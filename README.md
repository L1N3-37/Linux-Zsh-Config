# Configuration for Linux Zshell

# Information
This is my Zshell configuration and was made to suit my preferences.
Feel free to tweak it and make your own version of it.

# Instructions
### View current Shell
Use `echo $SHELL` in your terminal to view the current shell
that the terminal is using.

### Installation of Zsh
- Update your package list with the following command:
`sudo apt-get update`
- Then, install Zsh using the command:
`sudo apt-get install zsh`

### Switch Default Shell to Zsh
- To set Zsh as your default shell, execute the following command:
`chsh -s $(which zsh)`

### Reverting to Previous Shell (Demonstration Uses Bash)
- If you wish to revert to the default shell, execute:
`chsh -s $(which bash)`

# Note
This configuration includes **Zsh Syntax Highlighting** setup. 
You only need to install it to activate the functionality.

### Zsh Syntax Highlighting
- Install **Zsh Syntax Highlighting** using the following command:
`sudo apt install zsh-syntax-highlighting`
