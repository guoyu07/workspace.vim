# vim-workspace

## Install
With Vim-Plug installed, put the following lines in your vimrc:

	Plug 'lvht/workspace.vim'
And then execute :PlugInstall in the command mode.
## Usage

First, do init by

	:WorkspaceInit
You will get a `.workspace.vim` file in your current path. Put any vim script
you want and save. The `.workspace.vim` will be executed once in the first time
you open vim in the `pwd` and its child path.
