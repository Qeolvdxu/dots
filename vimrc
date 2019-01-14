" Disable Nasty Arrow Keys
noremap   <Up>     <NOP>
inoremap  <Up>     <NOP>
noremap   <Down>   <NOP>
inoremap  <Down>   <NOP>
noremap   <Left>   <NOP>
inoremap  <Left>   <NOP>
noremap   <Right>  <NOP>
inoremap  <Right>  <NOP>

" Unhighlight search results with '?'
noremap ? :nohlsearch<CR>

" Move Up and Down Lines Visually
noremap j gj	
noremap k gk

" Enable Undo Saving
set undofile
set undodir=~/.vim/undodir

" Enable Cursor Line When In Insert Mode
augroup highlight_follows_focus 
	autocmd!
 	autocmd InsertEnter * set cursorline
 	autocmd InsertLeave * set nocursorline
augroup END


 
set tabstop=4		"Set Tabs to Take 4 Spaces
set number 		"Enable Number Lines
set lazyredraw		"Disable Redraw on Macros
set showmatch		"Show matching parenthesis-like characters
set incsearch		"Search In Realtime
set hlsearch		"Highlight Searches
set numberwidth=5   "Add visual space before the number lines
