command! WorkspaceInit call workspace#init()
command! WorkspaceEdit call workspace#edit()

autocmd BufWritePost .workspace.vim source %

let s:root = workspace#get_root()
if filereadable(s:root.'/.workspace.vim')
	execute 'cd '.s:root
	execute 'source .workspace.vim'
endif

" vim: noexpandtab:ts=2:sts=2:sw=2
