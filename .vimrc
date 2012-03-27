call pathogen#infect()

set t_Co=256
set nocompatible
set smartindent
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set backspace=indent,eol,start
set nowrap
set number
set copyindent
set ignorecase
set showmatch
set mat=5
set scrolloff=4
set virtualedit=all
set timeoutlen=200
set mouse=a
set nolist
set gdefault
set incsearch
set hlsearch
"set pastetoggle=<F2>
set listchars=tab:▸\ ,trail:·,extends:#,nbsp:·
set formatoptions+=1

"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
"set complete-=k complete+=k

"set runtimepath+=~/.vim/bundle/ultisnips

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
 
   
" Code folding
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" MiniBufExplorer settings
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplUseSingleClick = 1

" Backups & Files
set backup                     " Enable creation of backup file.
"set backupdir=~/.vim/backups " Where backups will go.
"set directory=~/.vim/tmp     " Where temporary files will go.

nnoremap <silent> <C-J> :bp<CR>
nnoremap <silent> <C-K> :bn<CR>
" FUNCTION KEY BINDINGS ------------------------
" F1 - toggle side/nerdTree
" F2 - pastetoggle(?)
" F3 - 
" F4 - list buffers 
" F5 - 
" F6 - 
" F7 - 
" F8 - 
" F9 - Gundo (undo tree)
" F10 - insert timestamp
" F11 - pathogen re-infect
" F12 - re-source .vimrc
" ----------------------------------------------
nnoremap <F1> :NERDTreeTabsToggle<CR>
nnoremap <F4> :buffers<CR>:buffer<Space>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
nnoremap <F9> :GundoToggle<CR>
nnoremap <F10> :r! date +"\%Y-\%m-\%d \%H:\%M:\%S"<CR>
nnoremap <F11> :call pathogen#infect()<CR>
nnoremap <F12> :so ~/.vimrc<CR>
" /FUNCTION KEY BINDINGS ------------------------

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
nnoremap <leader>1 yyPVr=jyypVr=
nnoremap <leader>2 yyPVr*jyypVr*
nnoremap <leader>3 yypVr=
nnoremap <leader>4 yypVr-
nnoremap <leader>5 yypVr^
nnoremap <leader>6 yypVr"

iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit
iab llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi
iab lllorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor

if has("gui_running")
    "set guifont=Droid\ Sans\ Mono:h10
    set guifont=Inconsolata:h18
    "colorscheme baycomb
    "colorscheme mustang
    "colorscheme molokai
    "colorscheme zenburn

    " Remove toolbar, left scrollbar and right scrollbar
    set guioptions-=T
    set guioptions-=l
    set guioptions-=L
    set guioptions-=r
    set guioptions-=R

    " Screen recording mode
    function! ScreenRecordMode()
        set columns=86
        "set guifont=Droid\ Sans\ Mono:h14
        set guifont=Inconsolata:h18
        set cmdheight=1
        "colorscheme molokai_deep
        "colorscheme zenburn
    endfunction
    command! -bang -nargs=0 ScreenRecordMode call ScreenRecordMode()
else
    set bg=dark
    "colorscheme molokai
    "colorscheme zenburn
endif

set vb
"let g:zenburn_high_Contrast=1
colors zenburn

syntax on

" focus in active buffer rather than nerdtree
autocmd VimEnter * wincmd p "
 
"filetype plugin on
"set ofu=syntaxcomplete#Complete
"autocmd FileType python set
"set tags+=$HOME/.vim/tags/python.ctags  
"autocmd FileType ruby set
"set tags+=$HOME/.vim/tags/ruby_gems.ctags  

"map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>
"ctags -R `bundle show rails`/../*
 




" Pulse ------------------------------------------------------------------- {{{

function! PulseCursorLine()
    let current_window = winnr()

    windo set nocursorline
    execute current_window . 'wincmd w'

    setlocal cursorline

    redir => old_hi
        silent execute 'hi CursorLine'
    redir END
    let old_hi = split(old_hi, '\n')[0]
    let old_hi = substitute(old_hi, 'xxx', '', '')

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 5m

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 5m

    hi CursorLine guibg=#4a4a4a
    redraw
    sleep 5m

    hi CursorLine guibg=#3a3a3a
    redraw
    sleep 5m

    hi CursorLine guibg=#2a2a2a
    redraw
    sleep 5m

    execute 'hi ' . old_hi

    windo set cursorline
    execute current_window . 'wincmd w'
endfunction

" }}}

