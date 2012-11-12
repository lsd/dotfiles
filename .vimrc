" zenchloride@gmail.com
" 11/11/2012

"call pathogen#infect()

""fu! RefreshFirefox()
""  silent !echo 'BrowserReload()' | nc -w 1 localhost 4242 2>&1 > /dev/null
"  if &modified
"    write
"    silent !echo  'vimYo = content.window.pageYOffset;
"          \ vimXo = content.window.pageXOffset;
"          \ BrowserReload();
"          \ content.window.scrollTo(vimXo,vimYo);
"          \ repl.quit();'  |
"          \ nc -w 1 localhost 4242 2>&1 > /dev/null
"  endif
""endfunction

"autocmd BufWriteCmd  *.html,*.css,*.gtpl,*.php,*.htm  : call Refresh_firefox() 

set t_Co=256
set nocompatible
set smartindent
set expandtab
set tabstop=4 shiftwidth=4 softtabstop=4
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

"set laststatus = 2
"set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k
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
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

nnoremap <silent> <C-J> :bp<CR>
nnoremap <silent> <C-K> :bn<CR>
nnoremap <silent> <C-T> :CommandT<CR>
" FUNCTION KEY BINDINGS ------------------------
" F1 - toggle side/nerdTree
" F2 - pastetoggle(?)
" F3 - 
" F4 - list buffers 
" F5 - 
" F6 - 
" F7 - 
" F8 - UndoTreeToggle        
" F9 - Gundo (undo tree)
" F10 - insert timestamp
" F11 - pathogen re-infect
" F12 - re-source .vimrc
" ----------------------------------------------
nnoremap <F1> :NERDTreeTabsToggle<CR>
nnoremap <F4> :buffers<CR>:buffer<Space>
nnoremap <F5> :call RefreshFirefox()<CR>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
"nnoremap <F> :<CR>
nnoremap <F8> :UndotreeToggle<cr> 
nnoremap <F9> :GundoToggle<CR>

nnoremap <F10> :r! date +"\%Y-\%m-\%d \%H:\%M:\%S"<CR>
nnoremap <F11> :call pathogen#infect()<CR>
nnoremap <F12> :so ~/.vimrc<CR>
" /FUNCTION KEY BINDINGS ------------------------


let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup=1

" Creating underline/overline headings for markup languages
" Inspired by http://sphinx.pocoo.org/rest.html#sections
"nnoremap <leader>1 yyPVr=jyypVr=
"nnoremap <leader>2 yyPVr*jyypVr*
"nnoremap <leader>3 yypVr=
"nnoremap <leader>4 yypVr-
"nnoremap <leader>5 yypVr^
"nnoremap <leader>6 yypVr"

"iab lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit
"iab llorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi
"iab lllorem Lorem ipsum dolor sit amet, consectetur adipiscing elit.  Etiam lacus ligula, accumsan id imperdiet rhoncus, dapibus vitae arcu.  Nulla non quam erat, luctus consequat nisi.  Integer hendrerit lacus sagittis erat fermentum tincidunt.  Cras vel dui neque.  In sagittis commodo luctus.  Mauris non metus dolor, ut suscipit dui.  Aliquam mauris lacus, laoreet et consequat quis, bibendum id ipsum.  Donec gravida, diam id imperdiet cursus, nunc nisl bibendum sapien, eget tempor neque elit in tortor

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


"let g:zenburn_high_Contrast=1
set vb
colors wombat
syntax on
" focus in active buffer rather than nerdtree
" autocmd VimEnter * wincmd p "
 
"filetype plugin on
"set ofu=syntaxcomplete#Complete
"autocmd FileType python set
"set tags+=$HOME/.vim/tags/python.ctags  
"autocmd FileType ruby set
"set tags+=$HOME/.vim/tags/ruby_gems.ctags  

"map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>
"ctags -R `bundle show rails`/../*
 
inoremap <??    <?php echo  ?><Left><Left><Left>
inoremap <?     <?php  ?><Left><Left><Left>
inoremap <%     <%  %><Left><Left><Left>
inoremap <%=    <%=  %><Left><Left><Left>

inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap <silent> }   }<ESC>
                      \:let tmp0=&clipboard <BAR>
                      \let &clipboard=''<BAR>
                      \let tmp1=@"<BAR>
                      \let tmp2=@0<CR>
                      \y2l
                      \:if '}}'=="<C-R>=escape(@0,'"\')<CR>"<BAR>


" actionscript syntax highlighting
au BufRead,BufNewFile *.as set ft=actionscript
"au syntax * cal rainbow_parentheses#activate()
au filetypedetect BufRead,BufNewFile *.txt setfiletype txtfmt 







 filetype off                   " Required!

 if has('vim_starting')
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 call neobundle#rc(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 "NeoBundle 'Shougo/neobundle.vim'

 " Recommended to install
 " After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
 NeoBundle 'Shougo/vimproc'

 " My Bundles here:
 "
 " Note: You don't set neobundle setting in .gvimrc!
 " Original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
NeoBundle 'Gundo'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/neosnippet.git'
" Non github repos
NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'



 " ...

 filetype plugin indent on     " Required!
 "
 " Brief help
 " :NeoBundleList          - list configured bundles
 " :NeoBundleInstall(!)    - install(update) bundles
 " :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles

 " Installation check.
 if neobundle#exists_not_installed_bundles()
   echomsg 'Not installed bundles : ' .
         \ string(neobundle#get_not_installed_bundle_names())
   echomsg 'Please execute ":NeoBundleInstall" command.'
   "finish
 endif

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'


let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

