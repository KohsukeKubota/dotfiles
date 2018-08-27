" setting
" set character encoding
set fenc=utf-8
" not make backup file
set nobackup
set nowritebackup
" not make swap file
set noswapfile
" automatically reload editing file
set autoread
" can open another file while editing buffer
set hidden
" print inputting command in status
set showcmd

" visual setting 
" print column number
set number
" frap too long text 
set wrap
" invalid automatical eol and stress 80 characters
set textwidth=0
set colorcolumn=80
" stress current column
" set cursorline
" stress current row
" set cursorcolumn
" move cursor to a character after end of line 
set virtualedit=onemore
" open existing buffer instead of new buffer
set switchbuf=useopen
" smart indent 
set smartindent
" visualize no beep sound
set novisualbell
" print pair brackets
set showmatch
" print hilight of branckets in 3 sec
set matchtime=3
" add brackets pair
set matchpairs& matchpairs+=<:>
" delete with backspace
set backspace=indent,eol,start
" always print status line
set laststatus=2
" autocomplete command line
set wildmode=list:longest
" move by column number while frapping
nnoremap j gj
nnoremap k gk
" automatically escape back slash and question mark in situation
cnoremap <expr> / getcmdtype() == '/' ? '\/' : '/'
cnoremap <expr> ? getcmdtype() == '?' ? '\?' : '?'
" set clipboard to default register
if has('unnamedplus')
    set clipboard& clipboard+=unnamedplus,unnamed
else
    set clipboard& clipboard+=unnamed
endif

" Tab
" Visualize invisibles
set list listchars=tab:\▸\-
" change tab to space and tab to 4 space
set expandtab
set softtabstop=4
set tabstop=4
" print space of tab except beginning of line
set tabstop=2
" print space of tab in beginning of line
set shiftwidth=2

" autocomplete  
" command line autocomplete 
set wildmenu
" autocomplete branckets
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap < <><Left>
inoremap [ []<Left>
" autocomplete quotes
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

" search
" search characters regardless of size
set ignorecase
" stressfully search characeters including uppercase
set smartcase
" increment search    
set incsearch
" turn first target after last target
set hlsearch
" release hilight in repeatedly <Esc>
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" plugin 'dein'
let s:dein_dir=expand('~/.vim/dein')
let s:dein_repo_dir=s:dein_dir . 'repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  let g:rc_dir = expand('~/.vim/rc')
  let s:toml = g:rc_dir . '/dein.toml'

  call dein#load_toml(s:toml, {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
