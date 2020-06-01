" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction


fun! TsIndent()
    setlocal shiftwidth=2 softtabstop=2 expandtab tabstop=2
endfun

fun! PyIndent()
    setlocal shiftwidth=4 softtabstop=4 expandtab tabstop=2
endfun

fun! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfun


fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

fun! MardownMaps()
    "markdown
    nmap <leader>P <Plug>MarkdownPreview
    nmap <leader>S <Plug>MarkdownPreviewStop
    nmap <leader>T <Plug>MarkdownPreviewToggle
endfun
