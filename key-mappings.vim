
" navigate between panes
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>

" next file in buffer
nnoremap <leader>n :bn<CR>
" previous file in buffer
nnoremap <leader>b :bp<CR>
" close file in buffer
nnoremap <leader>c :bw<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap <C-p> :GFiles<CR>


" Tab scroll
inoremap <silent><expr> <Tab>
            \ pumvisible() ? "\<C-n>" :
            \ CheckBackSpace() ? "\<TAB>" :
            \ coc#refresh()

"emmet
imap <S-tab> <plug>(emmet-expand-abbr)


