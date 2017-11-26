function! workspace#init() "{{{
	execute 'e .workspace.vim'
endfunction "}}}

function! workspace#edit() "{{{
	execute 'e .workspace.vim'
endfunction! "}}}

function! workspace#get_root() " {{{
	let root = get(g:, 'workspace_root', '/')

	if root != '/'
		return root
	endif

	let pwd = expand("%:p:h")
	let root = pwd

	while root != "/"
		if (filereadable(root.'/.workspace.vim'))
			let g:workspace_root = root
			return root
		endif
		let root = fnamemodify(root, ":h")
	endwhile

	return root
endfunction " }}}

" vim: noexpandtab:ts=2:sts=2:sw=2
