" Description: Keymaps 

"Basic Keymap " {{{
nnoremap <leader>d "_d
nnoremap x "_x

" Select All
nmap <C-a> gg<S-v>G


" NERDTree & Directory

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Tabs
nmap <S-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
 " }}}

"Windows " {{{
"-----------------------------------
"Split Window
	nmap ss :split<Return><C-w>w
	nmap sv :vsplit<Return><C-w>w

	"Move window
	nmap <Space> <C-w>w
	map s<left> <C-w>h
	map s<right> <C-w>l
	map s<up> <C-w>k
	map s<down> <C-w>j

	"Resize window
	nmap <C-w><left> <C-w><
	nmap <C-w><right> <C-w>>
	nmap <C-w><up> <C-w>+
	nmap <C-w><down> <C-w>-
	" }}}

" Search for selected text, forwards or backwards. " {{{
" ----------------------------------------------
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
"}}}

" Telescope Keymaps " {{{
" ----------------------------------------------

nnoremap <silent> ;f <cmd>Telescope find_files<cr>
nnoremap <silent> ;r <cmd>Telescope live_grep<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>



"  }}}

" vim: set foldmethod=marker foldlevel=0:
