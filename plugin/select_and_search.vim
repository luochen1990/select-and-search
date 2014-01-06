func select_and_search:get_selected_text()
	let tmp = @"
	normal! gvy
	normal! gv
	let [tmp , @"] = [@" , tmp]
	return tmp
endfunc

vnoremap n :<c-u>let @/='\V'.escape(select_and_search:get_selected_text(),'\')<cr><esc>nzz
vnoremap <s-n> :<c-u>let @/=select_and_search:get_selected_text()<cr><esc><s-n>zz
