"-------------------------"
" Author:  Daniel Madison "
" Updated: Nov 22, 2017   "
"-------------------------"
" Plugin Install Directory
call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-sensible'

" NERDTree file browser
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intelisense

" Insert closing pair for quotes, bracke, parens, braces
"Plug 'jiangmiao/auto-pairs'

" more autoclose Not sure which is better???
"Plug 'townk/vim-autoclose'
Plug 'Raimondi/delimitMate'
" switch between source and header files
Plug 'vim-scripts/a.vim'

" Auto insert/completion
" Plug 'ervandew/supertab'

" class outline viewer
Plug 'majutsushi/tagbar'

" Syntax Highlighter
"Plug 'vim-scripts/TagHighlight'
Plug 'sheerun/vim-polyglot'

" Airline babyyyy
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Better Cpp Highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Git Wrapper
Plug 'tpope/vim-fugitive'

" Git diff column
Plug 'airblade/vim-gitgutter'

" Snippits and shit
Plug 'garbas/vim-snipmate'
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'

" Remove whitespace
Plug 'bronson/vim-trailing-whitespace'

" neomake is a code linting tool that runs in the background.
Plug 'neomake/neomake'

" Color schemes
" Plug 'rafi/awesome-vim-colorschemes'
Plug 'wuelnerdotexe/vim-enfocado'

" GOlang
Plug 'fatih/vim-go'
call plug#end()

let g:snipMate = { 'snippet_version' : 1 }

" User Interface {{{
    filetype plugin on
    filetype plugin indent on           "enable ft+plugin detect
    syntax on
    set termguicolors
    let $NVIM_TUI_ENABLE_TRUE_COLOR = 1 " True gui colors in terminal
"    colorscheme gruvboxo
    set background=dark
    set encoding=utf-8
    set more
    set number
    set title
    set noshowmode
    set showcmd
    set visualbell                  "visual instead of beep
    set noswapfile
    " Airline{{{
        let g:airline_powerline_fonts = 1
        let g:airline#extensions#tabline#enabled = 2
        let g:airline#extensions#tabline#fnamemod = ':t'
        let g:airline#extensions#tabline#left_sep = ' '
        let g:airline#extensions#tabline#left_alt_sep = '|'
        let g:airline#extensions#tabline#right_sep = ' '
        let g:airline#extensions#tabline#right_alt_sep = '|'
        let g:airline_left_sep = ' '
        let g:airline_left_alt_sep = '|'
        let g:airline_right_sep = ' '
        let g:airline_right_alt_sep = '|'
        " let g:airline_theme = 'atomic'
        let g:airline_theme = 'enfocado'
    " }}}
    let g:enfocado_style = 'nature'
    colorscheme enfocado
" }}}

" General Settings {{{
    set hidden                  " buffer change, more undo
    set history=40                  " default 20
    set iskeyword+=_,$,@,%,#            " not word dividers
    set laststatus=2                " always show statusline
    set listchars=tab:>\                " > to highlight <tab>>
    set list                    " displaying listchars
    set mouse=a                 " mouse in all modes
    set nocompatible                " don't vi-compatible
    set noexrc                  " don't use other .*rc(s)
    set nostartofline               " no goto #1 char in line
    set numberwidth=5               " 99999 lines

    " Allows writing to files with root priviledges
    cmap w!! w !sudo tee % > /dev/null

    " WordWrap {{{
        set nowrap                  " don't wrap lines
        autocmd BufRead,BufNewFile *.md.*.txt setlocal wrap " DO wrap on markdown files"" Wordwrap {{{
        set linebreak
        set nolist "list dables linebreak
        set textwidth=120
        set wrapmargin=0
    " }}}

    " Folding {{{
        set foldcolumn=0                " 1 width folding column
        set foldmethod=indent               " folds using indent
        set foldnestmax=10              " max 10 nested folds
        set nofoldenable                " all folds open default
    " }}}

    " Search and replace {{{
        set gdefault                    " default s//g
        set incsearch                   " "live"-search
        set ignorecase                  " case insensitive search
        set smartcase                   " unless query has capital letters
        set magic
    " }}}

    " Matching {{{
        set matchtime=2                 " time to blink match {}
        set showmatch                   " tmp-jump to match-bracket
    " }}}

    " Text formatting {{{
        set autoindent                                  " preserve indentation
        set backspace=indent,eol,start                  " smart backspace
        set expandtab                                   " real tabs plase
        set shiftround                                  " be clever with tabs
        set shiftwidth=4                                " default 8
        set smartcase                                   " igncase,except w/capitals
        set smartindent                                 " see autoindent
        set smarttab                                    " tab to 0,4,8 etc.
        set softtabstop=4                               " "tab" feels like <tab>
        set tabstop=4                                   " replace <TAB> w/4 spaces
        " inoremap { {}<Esc>i
        " inoremap [ []<Esc>i
        " inoremap ( ()<Esc>i
    " }}}

    " Files {{{
        set autochdir                                   " always use curr. dir.
        set autoread                                    " refresh if changed
        set backup                                      " backup curr file
        set backupdir=~/.vim/backup,/tmp                " backup director{y,ies}
        set directory=~/.vim/backup,/tmp
        set backupext=~                                 " append ~ to backups
        set confirm                                     " confirm changed files
        set noautowrite                                 " never autowrite
        set updatecount=50                              " update swp after 50chars
        set undolevels=100                             " max undo's
        set noswapfile
    " }}}

" }}}

" Key Bindings {{{
    " Open the plugin NERDTree
    noremap <F2> :NERDTreeToggle<CR>

    " Toggle buffer selection/tag lists
    map <F3> <ESC>:TagbarToggle<CR>

    " Snipmate remapping
    " imap <tab> <C-r>=TriggerSnippet()<CR>

    " Yank(copy) to system clipboard
    noremap <leader>y "+y

    " Commenting with # or remove for multiple languages
    vnoremap <leader>; :s/^/#/<CR>:noh<CR>
    vnoremap <leader>: :s/^\/\/\\|^--\\|^> \\|^[#"%!;]//<CR>:nohlsearch<CR>"]

    " Folding {{{
        nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
        vnoremap <Space> zf
    " }}}

    " Pasting {{{
        nnoremap p ]p
        nnoremap <C-p> p
    " }}}
        nnoremap <CR> G
" }}}
"
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-phpls',
    \ 'coc-python',
	\ 'coc-diagnostic',
    \ 'coc-go',
    \ 'coc-stylelint',
    \ 'coc-spell-checker'
    \]

" " May need for vim (not neovim) since coc.nvim calculate byte offset by count
" utf-8 byte sequence.
set encoding=utf-8
" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for apply code actions at the cursor position.
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer.
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for apply refactor code actions.
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line.
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>
