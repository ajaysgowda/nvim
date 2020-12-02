" navigate between panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" next file in buffer
nnoremap <leader>n :bn<CR>
" previous file in buffer
nnoremap <leader>b :bp<CR>
" close file in buffer
nnoremap <leader>c :bw<CR>

" pane resize
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" Tab scroll
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ CheckBackSpace() ? "\<TAB>" :
            \ coc#refresh()

" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"



"finder
nnoremap <C-p> :GFiles<CR>

" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use `lp` and `ln` for navigate diagnostics
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gf <Plug>(coc-references)

" Remap for rename current word
nmap <leader>gr <Plug>(coc-rename)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Map esc to exit terminal mode
:tnoremap <Esc> <C-\><C-n>

function! s:show_documentation()
    if &filetype == 'vim'
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

fun! PyMap()
    nmap <F5> :CocCommand python.execInTerminal<CR>
endfun

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd FileType python let b:coc_root_patterns = ['.git', '.env']
