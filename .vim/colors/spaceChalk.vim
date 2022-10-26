" Vim color scheme
"
" Name:         spaceChalk.vim
" Maintainer:   @jessebot - Jesse Hitch
" Last Change:  2022-10-08 08:18:29.0 +0200
" License:      GPLv3
" Notes: Use :help command to check vim help on what variables are called
"        can also use http://bytefluent.com/vivify/ to find variables of colors

" Colours in use
" --------------
" #CAEAFF chalky white
" #ffaff9 light pink
" #f289f9 magenta
" #f2748a pale red
" #ff8d87 soft redish orange
" #fdcd36 light orange
" #f7fb53 soft yellow
" #a8fd57 lime green
" #5ac4b9 teal
" #5cc9fd blue
" #5f87ff cornflower blue
" #a3a8f8 medium purple
"
" #2569aa darker blue
" #585858 gray
" #323232 grayish black
" #232336 blueish black
" #1d2652 navy blue

set background=dark

hi clear

if exists("syntax_on")
   syntax reset
endif
hi Search ctermbg=White
hi Search ctermfg=DarkBlue

let g:colors_name = "spaceChalk"

" GUI Colors
"
" this is the general background of the whole editor and the plain text color
" #E8FBFF
highlight Normal      guibg=#232336 guifg=#CAEAFF
highlight Cursor      guibg=#a3a8f8 guifg=Black  
highlight CursorLine  guibg=#323232 
highlight LineNr      guibg=#323232 guifg=#5f87ff
highlight Folded      guibg=#3E3E3E guifg=#ffaff9
highlight Visual      guibg=#2569aa guifg=#a8fd57

" this one controls the column over 80 characters
highlight ColorColumn guibg=#2569aa

" this is for the split line between other windows and nerdtree
highlight VertSplit guibg=#a8fd57 guifg=#3E3E3E

" these are for little popup dropdown menus, for things like tab complete
highlight Pmenu    guibg=#1d2652 guifg=#5cc9fd
highlight PMenuSel guibg=#323232 guifg=#fdcd36

" General Colors
highlight Comment    guifg=#a3a8f8
highlight Constant   guifg=#f7fb53
highlight Keyword    guifg=#fdcd36
highlight String     guifg=#a8fd57
highlight Boolean    guifg=#5ac4b9
highlight Number     guifg=#f289f9
highlight Float      guifg=#f289f9
highlight Type       guifg=#5cc9fd
" highlight Identifier guifg=#a8fd57 gui=NONE
" highlight Function   guifg=#5cc9fd gui=NONE
highlight Identifier guifg=#fdcd36
highlight Function   guifg=#5cc9fd
highlight PreProc    guifg=#5f87ff
highlight Todo       guifg=#fdcd36 guibg=#2569aa


highlight StatusLine guibg=#5cc9fd

" Searching
highlight clear Search
highlight Search     guibg=#f7fb53 guifg=Black

" Invisible character colors
highlight NonText    guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

" HTML Colors
highlight link htmlTag     Type
highlight link htmlEndTag  htmlTag
highlight link htmlTagName htmlTag

highlight pythonParameters      ctermfg=147 guifg=#AAAAFF
highlight pythonParam           ctermfg=175 guifg=#f289f9
highlight pythonBrackets        ctermfg=183 guifg=#d7afff
highlight pythonLambdaExpr      ctermfg=105 guifg=#8787ff
highlight pythonBrackets        guifg=#5ac4b9

" Ruby Colors
highlight link rubyClass            Keyword
highlight link rubyDefine           Keyword
highlight link rubyConstant         Type
highlight link rubySymbol           Constant
highlight link rubyStringDelimiter  rubyString
highlight link rubyInclude          Keyword
highlight link rubyAttribute        Keyword
highlight link rubyInstanceVariable Normal

" Rails Colors
highlight link railsMethod Type

" Sass colors
highlight link sassMixin Keyword
highlight link sassMixing Constant

" Outliner colors
highlight OL1 guifg=#f289f9
highlight OL2 guifg=#a8fd57
highlight OL3 guifg=#5cc9fd
highlight OL4 guifg=#f7fb53
highlight BT1 guifg=#a3a8f8
highlight link BT2 BT1
highlight link BT3 BT1
highlight link BT4 BT1

" Markdown colors
highlight markdownCode guifg=#a8fd57 guibg=#232336
highlight link markdownCodeBlock markdownCode

" Git colors
highlight gitcommitSelectedFile  guifg=#a8fd57
highlight gitcommitDiscardedFile guifg=#f2748a
highlight gitcommitWarning       guifg=#f2748a
highlight gitcommitBranch        guifg=#fdcd36
highlight gitcommitHeader        guifg=#5cc9fd

" Gitgutter stuff
highlight! link SignColumn LineNr
" change sign color color
" highlight SignColumn guibg=#323232
" change the colors back to what they should be when there are changes
highlight GitGutterAdd    guifg=#a8fd57 ctermfg=2
highlight GitGutterChange guifg=#f7fb53 ctermfg=3
highlight GitGutterDelete guifg=#f2748a ctermfg=1

" -------------  NERDTree syntax colors for file browsing -------------------
" #a8fd57 #5cc9fd #a3a8f8 #fdcd36

" #a8fd57
let g:WebDevIconsDefaultFolderSymbolColor = 'a8fd57'
" #5cc9fd
let g:WebDevIconsDefaultFileSymbolColor = '5cc9fd'
"
" set the default colors for different file types :)
let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
" #a3a8f8 
let g:NERDTreeExtensionHighlightColor['md'] = 'a3a8f8' 
let g:NERDTreeExtensionHighlightColor['txt'] = 'a3a8f8' 
" #fdcd36
let g:NERDTreeExtensionHighlightColor['in'] = 'fdcd36' 
let g:NERDTreeExtensionHighlightColor['yaml'] = 'fdcd36' 
let g:NERDTreeExtensionHighlightColor['json'] = 'fdcd36' 
let g:NERDTreeExtensionHighlightColor['cfg'] = 'fdcd36' 
" #5cc9fd
let g:NERDTreeExtensionHighlightColor['py'] = '5cc9fd' 
" #a8fd57 lime green
let g:NERDTreeExtensionHighlightColor['sh'] = 'a8fd57' 
