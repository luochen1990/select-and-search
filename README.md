Select & Search
===
>	select text in v mode, then press n to search next one (N for prev one)

-------------------------------------------------------------------------------------------------------- 

you can also find this plugin in **www.vim.org [here](http://www.vim.org/scripts/script.php?script_id=4819)**.

Install & Configuration:
-------------------------------------------------------------------------------------------------------- 

### Install via Vundle:
- `Bundle 'luochen1990/select-and-search'`
- add this to your vimrc: `let g:select_and_search_active = 1`

### Install Manually:
- first, put `rainbow.vim`(this file) to dir `~/.vim/plugin` or `vimfiles/plugin`
- second, add the follow sentences to your `.vimrc` or `_vimrc` :
	```vim
	let g:select_and_search_active = 1
	```
- third, restart your vim and enjoy coding.

### Configuration:
- `let g:select_and_search_active = 2` will not jump when pressing the first `n` or `N`
- `let g:select_and_search_active = 3` will map `*` instead of `n` and `N`

-------------------------------------------------------------------------------------------------------- 
**Rate this script if you like it, 
and i'll appreciate it and improve this plugin for you because of your support ! 
 
