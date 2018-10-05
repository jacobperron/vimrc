" Jump to the last known cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

filetype plugin indent on
" Show existing tab with 4 spaces width
set tabstop=4
" When indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert spaces
set expandtab

execute pathogen#infect()
