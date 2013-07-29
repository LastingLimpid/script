set nu
set fileencodings=utf-8
set termencoding=utf-8
set encoding=utf-8
set expandtab
set tabstop=2
set shiftwidth=2
set pastetoggle=<F11>
set laststatus=2
set statusline=%F:\ %l:%c

let g:ackprg = 'ag --nogroup --nocolor --column'

"nmap ,f :FufFileWithCurrentBufferDir<CR>
"nmap ,b :FufBuffer<CR>
"nmap ,t :FufTaggedFile<CR>
imap jj <esc>
"imap kk <c-x><c-o>
imap ,kk <c-x>s
imap =-- <C-C>gg=<S-G>
imap <S-S><S-S> <ESC>:w<CR>
nmap <S-S><S-S> :w<CR>
nmap <F8> :NERDTreeToggle<CR> 
imap <F8> <ESC><F8> 
nmap <tab> gt
nmap <s-tab> gT
"filetype indent on
"filetype plugin on
"filetype plugin indent on


execute pathogen#infect()
syntax on
filetype plugin indent on

