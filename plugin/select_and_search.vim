if exists('s:loaded') || !((exists('g:select_and_search_active') && g:select_and_search_active))
	finish
endif
let s:loaded = 1

func select_and_search#get_selected_text()
	let tmp = @"
	normal! gvy
	normal! gv
	let [tmp, @"] = [@", tmp]
	return tmp
endfunc

func select_and_search#plain_text_pattern(s)
	return '\V'.escape(a:s, '\')
endfunc

func select_and_search#get_search_pat()
	return select_and_search#plain_text_pattern(select_and_search#get_selected_text())
endfunc

vnoremap n :<c-u>let @/=select_and_search#get_search_pat()<cr><esc>nzz
vnoremap <s-n> :<c-u>let @/=select_and_search#get_search_pat()<cr><esc><s-n>zz
