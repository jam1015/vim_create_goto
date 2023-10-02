"if 'tfilename' doesn't exist, this function will try to create it by going there
function! vim_create_goto#CreateFile(tfilename)
	" Expand tildes in the filename parameter
	let newfilepath = expand(a:tfilename . ':p')

	if filereadable(newfilepath)
		echo "File already exists"
		:norm gf
	else
		" Extract the directory name from the full path
		let dir = fnamemodify(newfilepath, ':h')
		
		" Create the directory if it does not exist, including parent directories as needed
		:execute "!mkdir -p " . shellescape(dir)
		
		" Create the file
		:execute "!touch " . shellescape(newfilepath)
		
		echom "File created: " . newfilepath
		:norm gf
	endif
endfunction
