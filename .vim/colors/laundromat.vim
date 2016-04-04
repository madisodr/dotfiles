" laundromat.vim -- Vim color scheme.
" Author:      cafeclimber (rdcampbell1990@gmail.com)
" Webpage:     http://www.github.com/cafeclimber
" Description: At the cleaners

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "laundromat"

if &t_Co >= 256 || has("gui_running")
    hi Normal ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    set background=light
    hi NonText ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#A5B9C4 gui=NONE
    hi Comment ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#A5B9C4 gui=NONE
    hi Constant ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#6BD6E3 gui=bold
    hi Error ctermbg=9 ctermfg=15 cterm=bold guibg=#A75D4D guifg=#F1F2E0 gui=bold
    hi Identifier ctermbg=15 ctermfg=9 cterm=NONE guibg=#F1F2E0 guifg=#A75D4D gui=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE guibg=NONE guifg=NONE gui=NONE
    hi PreProc ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#A75D4D gui=NONE
    hi Special ctermbg=NONE ctermfg=10 cterm=NONE guibg=NONE guifg=#A4D485 gui=NONE
    hi Statement ctermbg=NONE ctermfg=9 cterm=bold guibg=NONE guifg=#A75D4D gui=bold
    hi String ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#B17FBC gui=NONE
    hi Number ctermbg=NONE ctermfg=13 cterm=bold guibg=NONE guifg=#B17FBC gui=bold
    hi Todo ctermbg=15 ctermfg=11 cterm=NONE guibg=#F1F2E0 guifg=#B89261 gui=NONE
    hi Type ctermbg=NONE ctermfg=9 cterm=bold guibg=NONE guifg=#A75D4D gui=bold
    hi Underlined ctermbg=15 ctermfg=7 cterm=NONE guibg=#F1F2E0 guifg=#A5B9C4 gui=NONE
    hi StatusLine ctermbg=11 ctermfg=0 cterm=NONE guibg=#B89261 guifg=#3D3941 gui=NONE
    hi StatusLineNC ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi VertSplit ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi TabLine ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi TabLineFill ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi TabLineSel ctermbg=11 ctermfg=0 cterm=NONE guibg=#B89261 guifg=#3D3941 gui=NONE
    hi Title ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#B17FBC gui=NONE
    hi CursorLine ctermbg=7 ctermfg=15 cterm=NONE guibg=#A5B9C4 guifg=#F1F2E0 gui=NONE
    hi LineNr ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi helpNormal ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi Visual ctermbg=11 ctermfg=7 cterm=NONE guibg=#B89261 guifg=#A5B9C4 gui=NONE
    hi VisualNOS ctermbg=11 ctermfg=7 cterm=underline guibg=#B89261 guifg=#A5B9C4 gui=underline
    hi Pmenu ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi PmenuSbar ctermbg=15 ctermfg=15 cterm=NONE guibg=#F1F2E0 guifg=#F1F2E0 gui=NONE
    hi PmenuSel ctermbg=7 ctermfg=7 cterm=NONE guibg=#A5B9C4 guifg=#A5B9C4 gui=NONE
    hi PmenuThumb ctermbg=7 ctermfg=7 cterm=NONE guibg=#A5B9C4 guifg=#A5B9C4 gui=NONE
    hi FoldColumn ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi Folded ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi WildMenu ctermbg=7 ctermfg=0 cterm=NONE guibg=#A5B9C4 guifg=#3D3941 gui=NONE
    hi SpecialKey ctermbg=15 ctermfg=7 cterm=NONE guibg=#F1F2E0 guifg=#A5B9C4 gui=NONE
    hi DiffAdd ctermbg=0 ctermfg=10 cterm=NONE guibg=#3D3941 guifg=#A4D485 gui=NONE
    hi DiffChange ctermbg=14 ctermfg=NONE cterm=NONE guibg=#6BD6E3 guifg=NONE gui=NONE
    hi DiffDelete ctermbg=0 ctermfg=9 cterm=NONE guibg=#3D3941 guifg=#A75D4D gui=NONE
    hi DiffText ctermbg=11 ctermfg=NONE cterm=NONE guibg=#B89261 guifg=NONE gui=NONE
    hi IncSearch ctermbg=14 ctermfg=15 cterm=NONE guibg=#6BD6E3 guifg=#F1F2E0 gui=NONE
    hi Search ctermbg=12 ctermfg=15 cterm=NONE guibg=#6672D9 guifg=#F1F2E0 gui=NONE
    hi Directory ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#6672D9 gui=NONE
    hi MatchParen ctermbg=NONE ctermfg=13 cterm=NONE guibg=NONE guifg=#B17FBC gui=NONE
    hi ColorColumn ctermbg=15 ctermfg=7 cterm=NONE guibg=#F1F2E0 guifg=#A5B9C4 gui=NONE
    hi signColumn ctermbg=15 ctermfg=7 cterm=NONE guibg=#F1F2E0 guifg=#A5B9C4 gui=NONE
    hi ErrorMsg ctermbg=9 ctermfg=15 cterm=bold guibg=#A75D4D guifg=#F1F2E0 gui=bold
    hi ModeMsg ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi MoreMsg ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi Question ctermbg=11 ctermfg=15 cterm=NONE guibg=#B89261 guifg=#F1F2E0 gui=NONE
    hi WarningMsg ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi Cursor ctermbg=0 ctermfg=15 cterm=NONE guibg=#3D3941 guifg=#F1F2E0 gui=NONE
    hi CursorColumn ctermbg=NONE ctermfg=7 cterm=NONE guibg=NONE guifg=#A5B9C4 gui=NONE
    hi SpellBad ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE guisp=#A75D4D
    hi SpellCap ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE guisp=#A4D485
    hi SpellLocal ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE guisp=#B17FBC
    hi SpellRare ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE guisp=#6BD6E3
    hi Boolean ctermbg=NONE ctermfg=13 cterm=bold guibg=NONE guifg=#B17FBC gui=bold
    hi Character ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#A75D4D gui=NONE
    hi Conditional ctermbg=NONE ctermfg=12 cterm=bold guibg=NONE guifg=#6672D9 gui=bold
    hi Define ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#A75D4D gui=NONE
    hi Delimiter ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#B89261 gui=bold
    hi Float ctermbg=NONE ctermfg=13 cterm=bold guibg=NONE guifg=#B17FBC gui=bold
    hi Include ctermbg=NONE ctermfg=12 cterm=NONE guibg=NONE guifg=#6672D9 gui=NONE
    hi Keyword ctermbg=NONE ctermfg=0 cterm=bold guibg=NONE guifg=#3D3941 gui=bold
    hi Label ctermbg=NONE ctermfg=0 cterm=bold guibg=NONE guifg=#3D3941 gui=bold
    hi Operator ctermbg=NONE ctermfg=0 cterm=NONE guibg=NONE guifg=#3D3941 gui=NONE
    hi Repeat ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#B89261 gui=bold
    hi SpecialChar ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#6BD6E3 gui=bold
    hi Tag ctermbg=NONE ctermfg=11 cterm=bold guibg=NONE guifg=#B89261 gui=bold
    hi Typedef ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#A75D4D gui=NONE
    hi rustMacro ctermbg=NONE ctermfg=9 cterm=bold guibg=NONE guifg=#A75D4D gui=bold
    hi rustFuncName ctermbg=NONE ctermfg=0 cterm=bold guibg=NONE guifg=#3D3941 gui=bold
    hi cOperator ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#6BD6E3 gui=bold
    hi cPreCondit ctermbg=NONE ctermfg=9 cterm=NONE guibg=NONE guifg=#A75D4D gui=NONE
    hi pythonOperator ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#6BD6E3 gui=bold
    hi pythonFunction ctermbg=NONE ctermfg=12 cterm=bold guibg=NONE guifg=#6672D9 gui=bold
    hi pythonRepeat ctermbg=NONE ctermfg=14 cterm=bold guibg=NONE guifg=#6BD6E3 gui=bold
    hi pythonStatement ctermbg=NONE ctermfg=9 cterm=bold guibg=NONE guifg=#A75D4D gui=bold
    hi pythonBuiltIn ctermbg=NONE ctermfg=10 cterm=bold guibg=NONE guifg=#A4D485 gui=bold
elseif &t_Co == 8 || $TERM !~# '^linux' || &t_Co == 16
    set t_Co=16
    hi Normal ctermbg=NONE ctermfg=black cterm=NONE
    set background=light
    hi NonText ctermbg=NONE ctermfg=gray cterm=NONE
    hi Comment ctermbg=NONE ctermfg=gray cterm=NONE
    hi Constant ctermbg=NONE ctermfg=cyan cterm=bold
    hi Error ctermbg=red ctermfg=white cterm=bold
    hi Identifier ctermbg=white ctermfg=red cterm=NONE
    hi Ignore ctermbg=NONE ctermfg=NONE cterm=NONE
    hi PreProc ctermbg=NONE ctermfg=red cterm=NONE
    hi Special ctermbg=NONE ctermfg=green cterm=NONE
    hi Statement ctermbg=NONE ctermfg=red cterm=bold
    hi String ctermbg=NONE ctermfg=magenta cterm=NONE
    hi Number ctermbg=NONE ctermfg=magenta cterm=bold
    hi Todo ctermbg=white ctermfg=yellow cterm=NONE
    hi Type ctermbg=NONE ctermfg=red cterm=bold
    hi Underlined ctermbg=white ctermfg=gray cterm=NONE
    hi StatusLine ctermbg=yellow ctermfg=black cterm=NONE
    hi StatusLineNC ctermbg=gray ctermfg=black cterm=NONE
    hi VertSplit ctermbg=gray ctermfg=black cterm=NONE
    hi TabLine ctermbg=gray ctermfg=black cterm=NONE
    hi TabLineFill ctermbg=gray ctermfg=black cterm=NONE
    hi TabLineSel ctermbg=yellow ctermfg=black cterm=NONE
    hi Title ctermbg=NONE ctermfg=magenta cterm=NONE
    hi CursorLine ctermbg=gray ctermfg=white cterm=NONE
    hi LineNr ctermbg=NONE ctermfg=black cterm=NONE
    hi CursorLineNr ctermbg=NONE ctermfg=black cterm=NONE
    hi helpLeadBlank ctermbg=NONE ctermfg=black cterm=NONE
    hi helpNormal ctermbg=NONE ctermfg=black cterm=NONE
    hi Visual ctermbg=yellow ctermfg=gray cterm=NONE
    hi VisualNOS ctermbg=yellow ctermfg=gray cterm=underline
    hi Pmenu ctermbg=gray ctermfg=black cterm=NONE
    hi PmenuSbar ctermbg=white ctermfg=white cterm=NONE
    hi PmenuSel ctermbg=gray ctermfg=gray cterm=NONE
    hi PmenuThumb ctermbg=gray ctermfg=gray cterm=NONE
    hi FoldColumn ctermbg=NONE ctermfg=black cterm=NONE
    hi Folded ctermbg=NONE ctermfg=black cterm=NONE
    hi WildMenu ctermbg=gray ctermfg=black cterm=NONE
    hi SpecialKey ctermbg=white ctermfg=gray cterm=NONE
    hi DiffAdd ctermbg=black ctermfg=green cterm=NONE
    hi DiffChange ctermbg=cyan ctermfg=NONE cterm=NONE
    hi DiffDelete ctermbg=black ctermfg=red cterm=NONE
    hi DiffText ctermbg=yellow ctermfg=NONE cterm=NONE
    hi IncSearch ctermbg=cyan ctermfg=white cterm=NONE
    hi Search ctermbg=blue ctermfg=white cterm=NONE
    hi Directory ctermbg=NONE ctermfg=blue cterm=NONE
    hi MatchParen ctermbg=NONE ctermfg=magenta cterm=NONE
    hi ColorColumn ctermbg=white ctermfg=gray cterm=NONE
    hi signColumn ctermbg=white ctermfg=gray cterm=NONE
    hi ErrorMsg ctermbg=red ctermfg=white cterm=bold
    hi ModeMsg ctermbg=NONE ctermfg=black cterm=NONE
    hi MoreMsg ctermbg=NONE ctermfg=black cterm=NONE
    hi Question ctermbg=yellow ctermfg=white cterm=NONE
    hi WarningMsg ctermbg=NONE ctermfg=black cterm=NONE
    hi Cursor ctermbg=black ctermfg=white cterm=NONE
    hi CursorColumn ctermbg=NONE ctermfg=gray cterm=NONE
    hi SpellBad ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellCap ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellLocal ctermbg=NONE ctermfg=black cterm=NONE
    hi SpellRare ctermbg=NONE ctermfg=black cterm=NONE
    hi Boolean ctermbg=NONE ctermfg=magenta cterm=bold
    hi Character ctermbg=NONE ctermfg=red cterm=NONE
    hi Conditional ctermbg=NONE ctermfg=blue cterm=bold
    hi Define ctermbg=NONE ctermfg=red cterm=NONE
    hi Delimiter ctermbg=NONE ctermfg=yellow cterm=bold
    hi Float ctermbg=NONE ctermfg=magenta cterm=bold
    hi Include ctermbg=NONE ctermfg=blue cterm=NONE
    hi Keyword ctermbg=NONE ctermfg=black cterm=bold
    hi Label ctermbg=NONE ctermfg=black cterm=bold
    hi Operator ctermbg=NONE ctermfg=black cterm=NONE
    hi Repeat ctermbg=NONE ctermfg=yellow cterm=bold
    hi SpecialChar ctermbg=NONE ctermfg=cyan cterm=bold
    hi Tag ctermbg=NONE ctermfg=yellow cterm=bold
    hi Typedef ctermbg=NONE ctermfg=red cterm=NONE
    hi rustMacro ctermbg=NONE ctermfg=red cterm=bold
    hi rustFuncName ctermbg=NONE ctermfg=black cterm=bold
    hi cOperator ctermbg=NONE ctermfg=cyan cterm=bold
    hi cPreCondit ctermbg=NONE ctermfg=red cterm=NONE
    hi pythonOperator ctermbg=NONE ctermfg=cyan cterm=bold
    hi pythonFunction ctermbg=NONE ctermfg=blue cterm=bold
    hi pythonRepeat ctermbg=NONE ctermfg=cyan cterm=bold
    hi pythonStatement ctermbg=NONE ctermfg=red cterm=bold
    hi pythonBuiltIn ctermbg=NONE ctermfg=green cterm=bold
endif

" Generated with RNB (https://gist.github.com/romainl/5cd2f4ec222805f49eca)
