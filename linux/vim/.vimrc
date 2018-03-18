"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
set nu!
set hlsearch
set tabstop=4
set cindent shiftwidth=4
set autoindent shiftwidth=4
set smartindent
set comments=://
set comments=s1:/*,mb:*,ex0:/
set tags=./tags,./../tags,./**/tags
set fileformats=unix,dos
map <Up> gk
map <Down> gj
set cmdheight=1
set ruler
set laststatus=2
"set statusline=[%n]\ \|\ %F%m%r%h\ \|%=\|\ %l,%c\ %p%%\ \|\ ascii=%b,hex=%B%{((&fenc==\"\")?\"\":\"\ \|\ \".&fenc)}\ \|
set statusline=[%n]\ \|\ %F%m%h\ \|%=\ %l,%c\ \ \ \|%p%%\ \|\ \ [LEN=%L]
"set csprg=/usr/bin/cscope
set uc=0
set viminfo='1,<0,f0
set incsearch
set ic
syntax enable
syntax on
set nonu
set number
"colorscheme desert
colorscheme evening
"colorscheme ron
"colorscheme solarized
"highlight current line/column
set cursorline
"set cursorcolumn
let btm_rainbow_color=1
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1 
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr> 
nmap cw :cw <cr>
filetype plugin indent on
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>" 
" Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
"nmap <C-s> :w <CR>
"nmap <C-s>a :wall <CR>
"if has("cscope")
"    if filereadable("cscope.out")
"        cscope add cscope.out
"    endif
"endif
"
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif
"autocmd BufEnter * lcd %:p:h
nmap <F5> :ls<CR>
nmap <C-q> :bd<CR>
nmap <C-esc> :noh<CR>
"--------This is my command--------------"
"This is star comments"
"nmap <M-[> I/*A*/j
"nmap <M-]> :s/^\/\*\(.*\)\*\/$/\1/<CR>k
"This is # comments"
"nmap <C-j> I#j
nmap <C-j> :s/^\(.*\)$/#\1/<CR>:noh<CR>j
nmap <C-k> :s/^\#//<CR>k
nmap <C-p> :s/^$/#!\/usr\/bin\/env python/<CR>j
nmap <C-e> :cs reset<CR>
"This is // comments"
"nmap <C-> I//
nmap <C-n> :s/^.*$/\/\/&/<CR>:noh<CR>j
nmap <C-,> :s/^\/\///<CR>
vmap <C-S-P> di
"O#endifOpO#if 0
vmap <C-S-O> :g/^\(\#if 0\|\#endif\)/d<cr>
nmap ,e :v/error/d<CR>:%s/^.*\/\(\<.*\>\.[ch].*error:\)/\1/g<CR> 
set expandtab 
set tabstop=4
set shiftwidth=4
":autocmd BufEnter * call DoWordComplete() 
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
