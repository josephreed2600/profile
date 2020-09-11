syntax on
filetype indent on
"set ai
"set smartindent
set modeline
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d :", 2, 2)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" <Leader>= indents whole file and restores cursor to its position before the operation
nnoremap <Leader>= gg=G``



" https://stackoverflow.com/a/10216459/6627273
"let c='a'
"while c <= 'z'
"  exec "set <A-".c.">=\e".c
"  exec "imap \e".c." <A-".c.">"
"  let c = nr2char(1+char2nr(c))
"endw
"set timeout ttimeoutlen=50
"nnoremap <A-j> ddP

" Autosave lol
"inoremap <Esc> <Esc>:w<CR>

set ts=2 sw=2

" Fix O lag but change styles????
"set noesckeys

map ; :

" execute search while typing query
set incsearch
" search case-insensitively
set ignorecase

" <Leader>gs generates getter and setter for the currently-cursored declaration
map <Leader>gs ^mawv/ <CR>h"tynwve"ny/getters<CR>opublic <Esc>"tpa <Esc>"npbiget<Esc>l~ea() { return <Esc>"npa; }<Esc>=<CR>/setters<CR>opublic void <Esc>"npbiset<Esc>l~ea(<Esc>"tpa <Esc>"npa) { this.<Esc>"npa = <Esc>"npa; }<Esc>=<CR>k`ak

set mouse=a

nmap <ScrollWheelUp> <nop>
nmap <S-ScrollWheelUp> <nop>
nmap <C-ScrollWheelUp> <nop>
nmap <ScrollWheelDown> <nop>
nmap <S-ScrollWheelDown> <nop>
nmap <C-ScrollWheelDown> <nop>
nmap <ScrollWheelLeft> <nop>
nmap <S-ScrollWheelLeft> <nop>
nmap <C-ScrollWheelLeft> <nop>
nmap <ScrollWheelRight> <nop>
nmap <S-ScrollWheelRight> <nop>
nmap <C-ScrollWheelRight> <nop>

imap <ScrollWheelUp> <nop>
imap <S-ScrollWheelUp> <nop>
imap <C-ScrollWheelUp> <nop>
imap <ScrollWheelDown> <nop>
imap <S-ScrollWheelDown> <nop>
imap <C-ScrollWheelDown> <nop>
imap <ScrollWheelLeft> <nop>
imap <S-ScrollWheelLeft> <nop>
imap <C-ScrollWheelLeft> <nop>
imap <ScrollWheelRight> <nop>
imap <S-ScrollWheelRight> <nop>
imap <C-ScrollWheelRight> <nop>

vmap <ScrollWheelUp> <nop>
vmap <S-ScrollWheelUp> <nop>
vmap <C-ScrollWheelUp> <nop>
vmap <ScrollWheelDown> <nop>
vmap <S-ScrollWheelDown> <nop>
vmap <C-ScrollWheelDown> <nop>
vmap <ScrollWheelLeft> <nop>
vmap <S-ScrollWheelLeft> <nop>
vmap <C-ScrollWheelLeft> <nop>
vmap <ScrollWheelRight> <nop>
vmap <S-ScrollWheelRight> <nop>
vmap <C-ScrollWheelRight> <nop>

"set mouse=
"set ttymouse=
