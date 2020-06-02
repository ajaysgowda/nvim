" Explorer
nmap <space>e :CocCommand explorer<CR>
nmap <space>f :CocCommand explorer --preset floating<CR>
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

"coc intelesense
let g:coc_global_extensions = [
            \'coc-emoji', 'coc-prettier',
            \'coc-tsserver', 'coc-tslint', 'coc-tslint-plugin',
            \'coc-css', 'coc-json', 'coc-yaml', 'coc-python',
            \'coc-angular', 'coc-html', 'coc-emmet',
            \ 'coc-explorer', 'coc-git'
            \]

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
