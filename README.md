# Configuration for Linux Zshell

![image](https://github.com/L1N3-37/Linux-Zsh-Config/assets/44227327/2e4acad7-16e9-4002-a76b-d9d339a00f6e)

![image](https://github.com/L1N3-37/Linux-Zsh-Config/assets/44227327/6a83b508-44a0-45f6-a0a6-1426b336470c)

![image](https://github.com/L1N3-37/Linux-Zsh-Config/assets/44227327/fe836bb9-f30d-48e1-bec6-6a6037c3e281)

# Information
This configuration was originally the default Zsh setup from 
**Kali Linux**. I was impressed by the structure and features 
that **Kali** includes by default, so I decided to customize it 
extensively to suit my preferences.

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
