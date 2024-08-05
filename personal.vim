" Personal colorscheme, based on moria
let colors_name = "personal"
if exists("syntax_on")
  syntax reset
endif
highlight clear

" Basic colors
highlight Normal guifg=#c0c0c0 guibg=#161616 ctermfg=7 ctermbg=233

" Basic groups
highlight Comment    guifg=#c0a080 guibg=bg      gui=none      ctermfg=180 ctermbg=bg
highlight Constant   guifg=#70c060 guibg=bg      gui=none      ctermfg=41  ctermbg=bg
highlight Identifier guifg=#7ee0ce guibg=bg      gui=none      ctermfg=80  ctermbg=bg
highlight Statement  guifg=#6888f8 guibg=bg      gui=none      ctermfg=69  ctermbg=bg
highlight PreProc    guifg=#c080c0 guibg=bg      gui=none      ctermfg=176 ctermbg=bg
highlight Type       guifg=#ff8078 guibg=bg      gui=none      ctermfg=210 ctermbg=bg
highlight Special    guifg=#408070 guibg=bg      gui=none      ctermfg=29  ctermbg=bg
highlight Underlined guifg=#30a0ff guibg=bg      gui=underline ctermfg=39  ctermbg=bg  cterm=underline
highlight Ignore     guifg=bg      guibg=bg      gui=none      ctermfg=bg  ctermbg=bg
highlight Error      guifg=bg      guibg=#c00000 gui=bold      ctermfg=bg  ctermbg=160 cterm=bold
highlight Todo       guifg=bg      guibg=#c0c000 gui=bold      ctermfg=bg  ctermbg=148 cterm=bold

" Periphery
highlight LineNr       guifg=#4e4e4e guibg=bg      gui=none ctermfg=239 ctermbg=bg
highlight NonText      guifg=#4e4e4e guibg=bg      gui=none ctermfg=239 ctermbg=bg
highlight TabLine      guifg=#4e4e4e guibg=bg      gui=none ctermfg=239 ctermbg=bg
highlight TabLineSel   guifg=#878787 guibg=bg      gui=bold ctermfg=102 ctermbg=bg  cterm=bold
highlight TabLineFill  guifg=#4e4e4e guibg=bg      gui=none ctermfg=239 ctermbg=bg
highlight StatusLine   guifg=fg      guibg=#4e4e4e gui=bold ctermfg=fg  ctermbg=239 cterm=bold
highlight StatusLineNC guifg=bg      guibg=#4e4e4e gui=none ctermfg=bg  ctermbg=239
highlight ModeMsg      guifg=fg      guibg=bg      gui=none ctermfg=fg  ctermbg=bg

" Cursor
highlight Cursor       guifg=bg guibg=#ff8000 gui=none ctermfg=bg  ctermbg=208
highlight CursorColumn          guibg=#404040 gui=none             ctermbg=238
highlight CursorLine            guibg=#404040 gui=none             ctermbg=238

" Highlighting
highlight Visual              guibg=#404040 gui=none            ctermbg=238
highlight VisualNOS  guifg=bg guibg=fg      gui=none
highlight Search     guifg=bg guibg=#76bdd5 gui=none ctermfg=bg ctermbg=74
highlight IncSearch  guifg=bg guibg=#e9967a gui=none ctermfg=bg ctermbg=209
highlight MatchParen guifg=bg guibg=#8fbc80 gui=none ctermfg=bg ctermbg=107

" Spelling
highlight SpellBad   guisp=#f04242 gui=undercurl ctermfg=bg ctermbg=196
highlight SpellRare  guisp=#a5a50d gui=undercurl ctermfg=bg ctermbg=142
highlight SpellLocal guisp=#a5a50d gui=undercurl ctermfg=bg ctermbg=142
highlight SpellCap   guisp=#a5a50d gui=undercurl ctermfg=bg ctermbg=142

" Folding
highlight Folded     guifg=#4e4e4e guibg=bg gui=italic ctermfg=239 ctermbg=bg
highlight FoldColumn guifg=#4e4e4e guibg=bg gui=none   ctermfg=239 ctermbg=bg

" Splits
highlight VertSplit guifg=fg guibg=#404040 gui=none ctermfg=fg ctermbg=238

" Diffs
highlight DiffAdd    guifg=fg guibg=#008b00 gui=none ctermfg=fg ctermbg=28
highlight DiffDelete guifg=fg guibg=#8b0000 gui=none ctermfg=fg ctermbg=1
highlight DiffChange guifg=fg guibg=#00008b gui=none ctermfg=fg ctermbg=18
highlight DiffText   guifg=fg guibg=#4545cd gui=bold ctermfg=fg ctermbg=57 cterm=bold

" Menus
highlight Pmenu      guifg=bg guibg=#404040 gui=none ctermfg=bg ctermbg=238
highlight PmenuSel   guifg=fg guibg=#404040 gui=bold ctermfg=fg ctermbg=238 cterm=bold
highlight PmenuSbar           guibg=#6b6b6b gui=none            ctermbg=242
highlight PmenuThumb          guibg=#959595 gui=none            ctermbg=246
highlight WildMenu   guifg=fg guibg=#878787 gui=bold ctermfg=fg ctermbg=102 cterm=bold

" Messages
highlight ErrorMsg   guifg=#c00000 guibg=bg gui=bold ctermfg=160 ctermbg=bg cterm=bold
highlight WarningMsg guifg=#c0c000 guibg=bg gui=bold ctermfg=148 ctermbg=bg cterm=bold
highlight MoreMsg    guifg=#878787 guibg=bg gui=bold ctermfg=102 ctermbg=bg cterm=bold
highlight Question   guifg=#e9967a guibg=bg gui=bold ctermfg=209 ctermbg=bg cterm=bold

" HTML
highlight htmlBold                guifg=fg guibg=bg gui=bold                  ctermfg=fg ctermbg=bg
highlight htmlUnderline           guifg=fg guibg=bg gui=underline             ctermfg=fg ctermbg=bg
highlight htmlItalic              guifg=fg guibg=bg gui=italic                ctermfg=fg ctermbg=bg
highlight htmlBoldUnderline       guifg=fg guibg=bg gui=bold,underline        ctermfg=fg ctermbg=bg
highlight htmlBoldItalic          guifg=fg guibg=bg gui=bold,italic           ctermfg=fg ctermbg=bg
highlight htmlUnderlineItalic     guifg=fg guibg=bg gui=underline,italic      ctermfg=fg ctermbg=bg
highlight htmlBoldUnderlineItalic guifg=fg guibg=bg gui=bold,underline,italic ctermfg=fg ctermbg=bg

" Miscellaneous
highlight SpecialKey   guifg=#ffa058 guibg=bg      gui=italic ctermfg=215 ctermbg=bg
highlight ColorColumn                guibg=#383838                        ctermbg=237
highlight SignColumn   guifg=#4e4e4e guibg=bg      gui=none   ctermfg=239 ctermbg=bg
highlight Conceal      guifg=#4e4e4e guibg=bg                 ctermfg=239 ctermbg=bg
highlight Title        guifg=fg      guibg=bg      gui=bold   ctermfg=fg  ctermbg=bg  cterm=bold
highlight Directory    guifg=#30a0ff guibg=bg                 ctermfg=39  ctermbg=bg
