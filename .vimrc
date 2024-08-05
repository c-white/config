" Guard against duplicate autocommands
augroup personal
  autocmd!
augroup end
augroup personal_nongui
  autocmd!
augroup end

" Escape key
noremap <Tab> <Esc>
inoremap <Tab> <Esc>
inoremap <Leader><Tab> <Tab>

" Color scheme
syntax enable
set background=dark
colorscheme personal
let macvim_skip_colorscheme=1

" Periphery
set number
set ruler
set rulerformat=%#LineNr#%=%l/%L\ :\ %c
set statusline=%f%=%l/%L\ :\ %c
set wildmenu

" Cursor
augroup personal_nongui
  autocmd VimEnter,InsertLeave *
    \ silent execute '!echo -n "[1 q"' | redraw!
  autocmd InsertEnter *
    \ silent execute '!echo -n "[5 q"' | redraw!
  autocmd VimLeave *
    \ silent execute '!echo -n "[ q"' | redraw!
augroup end

" Highlighting
set hlsearch
augroup personal
  autocmd Syntax *
    \ syntax match TrailingSpace "\s\+$" |
    \ syntax match ProblemChar "[^\x09\x20-\x7e]" |
    \ highlight link TrailingSpace Error |
    \ highlight link ProblemChar Error
  autocmd InsertLeave *
    \ highlight link TrailingSpace Error |
    \ highlight link ProblemChar Error
  autocmd InsertEnter *
    \ highlight link TrailingSpace NONE |
    \ highlight link ProblemChar NONE
augroup end

" Spelling
set spell spelllang=en_us
set spellfile=$HOME/.vim/spell/en.ascii.add
set nospell

" Folding
set nofoldenable

" Splits
set splitbelow
set splitright

" Tabs
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=-1
let g:python_recommended_style = 0

" Comments
let s:comment_strings =
  \ {
  \ 'c': '\/\/',
  \ 'cpp': '\/\/',
  \ 'python': '#',
  \ 'sh': '#',
  \ 'tex': '%',
  \ 'vim': '"'
  \ }
function! ToggleComment()
  if has_key(s:comment_strings, &filetype)
    let comment_string = s:comment_strings[&filetype]
    if getline('.') =~ '^$'  " blank line
      execute 'silent s/^/' . comment_string . '/'
    elseif getline('.') =~ '^\s*' . comment_string  " comment, perhaps after whitespace
      execute 'silent s/^\(\s*\)' . comment_string . '\(\s\=\)/\1/'
    else  " nonempty, non-commented line
      execute 'silent s/^\(\s*\)/\1' . comment_string . ' /'
    end
  else
    echo 'Comments not defined for filetype'
  end
endfunction
nnoremap <Leader><Space> :call ToggleComment()<CR>
vnoremap <Leader><Space> :call ToggleComment()<CR>

" Vim-Latex modifications
let g:tex_flavor = 'latex'
let g:Tex_ViewRuleComplete_pdf = 'open $*.pdf'
let g:Tex_GotoError = 0
let g:Tex_ShowErrorContext = 0
let g:Imap_UsePlaceHolders = 0
let g:Tex_Folding = 0

" Miscellaneous
set fileformats=unix
set noerrorbells
