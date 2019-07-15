let mapleader = ","
call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'osyo-manga/vim-brightest'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'solars/github-vim'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'nanotech/jellybeans.vim'
Plug 'michalbachowski/vim-wombat256mod'

Plug 'vim-ruby/vim-ruby'
"Plug 'tpope/vim-rails'
Plug 'plasticboy/vim-markdown'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-cucumber'
Plug 'fatih/vim-go'
Plug 'tpope/vim-haml'
Plug 'wlangstroth/vim-haskell' " working pretty well
" Plug 'dag/vim2hs' " includes literate haskell
Plug 'pangloss/vim-javascript'
Plug 'sunaku/vim-ruby-minitest'
Plug 'skwp/vim-rspec'
Plug 'cakebaker/scss-syntax.vim'
Plug 'wavded/vim-stylus'
Plug 'slim-template/vim-slim'

Plug 'rking/ag.vim'
"Plug 'gorodinskiy/vim-coloresque'
Plug 'kien/ctrlp.vim'
Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'sjl/gundo.vim'
Plug 'tmhedberg/matchit'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/ZoomWin'

"Plug 'AndrewRadev/splitjoin.vim' interesting but behaving oddly
Plug 'vasconcelloslf/vim-interestingwords'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'junegunn/vim-peekaboo'
Plug 'ludovicchabant/vim-gutentags'

Plug 'mattn/webapi-vim'
Plug 'mattn/gist-vim'

"Plug 'rust-lang/rust.vim'
"Plug 'cespare/vim-toml'
"Plug 'keith/swift.vim'

Plug 'elixir-lang/vim-elixir'

" Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/Colour-Sampler-Pack'

Plug 'ElmCast/elm-vim'
Plug 'digitaltoad/vim-pug'
"Plug 'statianzo/vim-jade'

Plug 'pangloss/vim-javascript'
"Plug 'mxw/vim-jsx'
Plug 'udalov/kotlin-vim'

Plug 'dln/avro-vim'
Plug 'posva/vim-vue'
" fast html mode but annoying ^Y binding I guess 
Plug 'mattn/emmet-vim'

Plug 'leafgarland/typescript-vim'

" Python
"Plug 'python-mode/python-mode'

" look into these later
"Plug 'othree/eregex.vim'
"Plug 'xolox/vim-session'
" :so %
" :PlugInstall

call plug#end()

" Stuff from Janus {{{
set nocompatible      " Use vim, no vi defaults
set number            " Show line numbers
set ruler             " Show line and column number
syntax enable         " Turn on syntax highlighting allowing local overrides
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
set noeol
set nofixendofline

" statusline
set laststatus=2  " always show the status bar

" Start the status line
set statusline=%f\ %m\ %r
set statusline+=Line:%l/%L[%p%%]
set statusline+=Col:%v
set statusline+=Buf:#%n
set statusline+=[%b][0x%B]
" }}}

set swapfile
set dir=~/.vimtemp
set hlsearch
set hidden
set history=1000
runtime macros/matchit.vim
set scrolloff=3
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
"set list listchars=tab:>-,trail:·
"set list listchars=trail:·
set list listchars=tab:··,trail:·
"map <leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
map  <leader>d :NERDTreeToggle<CR>
nmap <leader>q :q<CR>
nmap <C-t> :tabnew<CR>
imap <C-t> <Esc>:tabnew<CR>i
map  <S-h> gT
map  <S-l> gt
map  <S-q> :q<CR>
nmap <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i
nmap ss :w<CR>
nmap sa :wall<CR>
"inoremap jj <Esc>
nmap <Leader>w :set nowrap!<CR>
"nmap <C-A> za
nmap dbg :set background=dark<CR>
nmap <C-g> :TagbarToggle<CR>
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"set statusline+=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
"set laststatus=2
"let g:syntastic_enable_signs=1

let g:ag_prg = 'ag --nogroup --nocolor --column'
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.rbc$', '\.rbo$', '\.class$', '\.o$', '\~$', '\.hi$']

nnoremap <C-p> :CtrlP<cr>

"Stuff I stole from Matt {{{
nnoremap <space> za
nnoremap ,<space> :nohlsearch<cr>
nnoremap - :e %:h<cr>
nnoremap \ :Ack 
" }}}


"Stuff from Janus {{{
" upper/lower word
nmap <leader>u mQviwU`Q
nmap <leader>l mQviwu`Q
" upper/lower first char of word
nmap <leader>U mQgewvU`Q
nmap <leader>L mQgewvu`Q
" Underline the current line with '='
nmap <silent> <leader>ul :t.<CR>Vr=
" map <leader>/ :NERDCommenterToggle<CR>
let g:syntastic_enable_signs=1
"let g:syntastic_quiet_warnings=0
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=2
" }}}


"" make indent/outdent reselect block
"vnoremap < <gv
"vnoremap > >gv

"call janus#add_mapping('nerdtree', 'map', '<leader>n', ':NERDTreeMirrorToggle<CR>')
"let g:nerdtree_tabs_open_on_gui_startup=0

let g:ctrlp_map = ''
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$|\.yardoc$\|node_modules\|DS_Store',
\ 'file': '\.pyc$\|\.pyo$\|\.rbc$|\.rbo$\|\.class$\|\.o$\|\~$\',
\ }

let g:user_emmet_leader_key='<C-Z>'


"set statusline=%f\ %m\ %r
set wrap
set nolbr " I don't like breaking on words
set expandtab


"nmap <C-h> <C-w>h
"imap <C-h> <Esc><C-w>hi
"nmap <C-j> <C-w>j
"imap <C-j> <Esc><C-w>ji
"nmap <C-k> <C-w>k
"imap <C-k> <Esc><C-w>ki
"nmap <C-l> <C-w>l
"imap <C-l> <Esc><C-w>li

highlight Folded ctermbg=0 ctermfg=8
nmap <leader>v :botright split ~/.vimrc<cr>

au BufWinLeave *.* mkview
"au BufWinEnter *.* silent loadview
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,Guardfile,config.ru,*.rake} set ft=ruby
"au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} set foldmethod=manual
"au FileType markdown setlocal wrap linebreak textwidth=72 nolist
au BufNewFile,BufRead *.json set ft=javascript
au BufNewFile,BufRead *.exs set ft=elixir
au BufNewFile,BufRead *.avsc set ft=json
"au FileType python <buffer> setlocal softtabstop=4 tabstop=4 shiftwidth=4
au FileType hspec <buffer> set ft=haskell
au FileType hspec <buffer> syn on
" Remember last location in file, but not for commit messages.
" see :help last-position-jump
au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g`\"" | endif

" fu! CustomFoldText()
"   "get first non-blank line
"   let fs = v:foldstart
"   while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
"   endwhile
"   if fs > v:foldend
"     let line = getline(v:foldstart)
"   else
"     let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
"   endif
" 
"   let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
"   let foldSize = 1 + v:foldend - v:foldstart
"   let foldSizeStr = " " . foldSize . " lines "
"   let foldLevelStr = repeat("+--", v:foldlevel)
"   let lineCount = line("$")
"   let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
"   let expansionString = repeat(" ", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
"   return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
" endf
" set foldtext=CustomFoldText()

set t_Co=256
" also good: molokai, candycode, desert, desert256, herald, inkpot, jellybeans, lettuce
"colorscheme desert256
colorscheme jellybeans
" set mouse=a

"set undofile
"set undodir=~/.vim/

map  <leader>sp :%s/ \+$//g<CR><C-O>
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
nmap gp :!gulp<CR>

" this stuff should make (mac?) neovim faster (with iterm?)
set ttyfast
set lazyredraw
set cul!

au FileType elm <buffer> nmap <leader>m <Plug>(elm-make)
au FileType elm <buffer> nmap <leader>e <Plug>(elm-error-detail)
"au FileType vim <buffer> set iskeyword+=-
au TermOpen * setlocal wrap