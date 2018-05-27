set nocompatible
set backspace=indent,eol,start
set nu!
set hlsearch
set cindent shiftwidth=4
set autoindent shiftwidth=4
set smartindent
set comments=://
set comments=s1:/*,mb:*,ex0:/
set tags=./tags,./../tags,./**/tags
set fileformats=unix,dos
set cmdheight=1
set ruler
set laststatus=2
set statusline=[%n]\ \|\ %F%m%h\ \|%=\ %l,%c\ \ \ \|%p%%\ \|\ \ [LEN=%L]
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
let g:winManagerWindowLayout="FileExplorer|TagList"
nmap wm :WMToggle<cr> 
nmap cw :cw <cr>
filetype plugin indent on

set nocp
filetype plugin on
set tags+=/home/unibosy/ws/recording/code/ServerSDK-Video "set tags+=D:/ctags/tags/hge 
set tags+=/home/unibosy/.vim " OmniCppComplete 
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1 
let OmniCpp_ShowPrototypeInAbbr = 1 " 显示函数参数列表 
let OmniCpp_MayCompleteDot = 1   " 输入 .  后自动补全
let OmniCpp_MayCompleteArrow = 1 " 输入 -> 后自动补全 
let OmniCpp_MayCompleteScope = 1 " 输入 :: 后自动补全 
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
" 自动关闭补全窗口 
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
set completeopt=menuone,menu,longest

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>" 
"Use CTRL-S for saving, also in Insert mode
noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>
nmap <C-s> :w <CR>
nmap <C-s>a :wall <CR>
"if has("cscope")
"    if filereadable("cscope.out")
"        cscope add cscope.out
"    endif
"endif

if has("cscope")
    set cscopetag
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
    set cscopeverbose

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR> 
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>
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

"vim split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap w=  :resize +3<CR>
nmap w-  :resize -3<CR>
nmap w,  :vertical resize -3<CR>
nmap w.  :vertical resize +3<CR>

"This is // comments"
"nmap <C-> I//
nmap <C-n> :s/^.*$/\/\/&/<CR>:noh<CR>j
nmap <C-,> :s/^\/\///<CR>
vmap <C-S-P> di
"O#endifOpO#if 0
vmap <C-S-O> :g/^\(\#if 0\|\#endif\)/d<cr>
nmap ,e :v/error/d<CR>:%s/^.*\/\(\<.*\>\.[ch].*error:\)/\1/g<CR> 
":autocmd BufEnter * call DoWordComplete() 
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
"set table with four spaces
set ts=4
set expandtab
%retab!
"nerdtree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>123
autocmd VimEnter * NERDTree
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
set tags=~/ws/recording/code/ServerSDK-Video/tags

"auto-complete bracket curly braces"
noremap [ []<Esc>i
inoremap { {<CR>}<Esc>O
autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
 if getline('.')[col('.') - 1] == a:char
 return "\<Right>"
 else
 return a:char
 endif
endf

function CloseBracket()
 if match(getline(line('.') + 1), '\s*}') < 0
 return "\<CR>}"
 else
 return "\<Esc>j0f}a"
 endif
endf

function QuoteDelim(char)
 let line = getline('.')
 let col = col('.')
 if line[col - 2] == "\\"
 return a:char
 elseif line[col - 1] == a:char
 return "\<Right>"
 else
 return a:char.a:char."\<Esc>i"
 endif
endf


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

"press enter to select 
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>" 
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif 
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <F6> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
" nnoremap <leader>lo :lopen<CR>	"open locationlist
" nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_collect_identifiers_from_tags_files=1
"error
let g:ycm_error_symbol = '>>'
"Warning
let g:ycm_warning_symbol = '>*'
