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
	return substitute(substitute('\V'.escape(a:s, '\'), '\n', '\\n', 'g'), '\t', '\\t', 'g')
endfunc

func select_and_search#get_search_pat()
	return select_and_search#plain_text_pattern(select_and_search#get_selected_text())
endfunc

if g:select_and_search_active == 1
	vnoremap n :<c-u>let @/=select_and_search#get_search_pat()<cr><esc>nzz
	vnoremap <s-n> :<c-u>let @/=select_and_search#get_search_pat()<cr><esc><s-n><s-n>zz
elseif g:select_and_search_active == 2
	vnoremap n :<c-u>let @/=select_and_search#get_search_pat()<cr><esc><s-n>zz
	vnoremap <s-n> :<c-u>let @/=select_and_search#get_search_pat()<cr><esc><s-n>zz
elseif g:select_and_search_active == 3
	vnoremap * :<c-u>let @/=select_and_search#get_search_pat()<cr><esc><s-n>zz
endif

