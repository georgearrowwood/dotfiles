# My Bash setup

1. Copy all dot files to ~
2. Import color schemes:
3. Install **Vundle** (plugin installer for vim)

	~~~
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	~~~

4. Install vim plugins.
	In vim run:
	
	~~~vim
	:PluginInstall
	~~~

5. Run shell config file

	~~~bash
	source ~/.bash_profile
	~~~

6. Install Powerline Fonts for Airline
	
	[https://github.com/powerline/fonts](https://github.com/powerline/fonts)
	
	Then chose it in iterm2 (Settings -> Profiles -> Text -> Font Non ASCII)

