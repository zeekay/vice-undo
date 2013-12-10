if version < 700 | finish | endif

call vice#Extend({
    \ 'commands': {
        \ 'UndotreeToggle': ['github:mbbill/undotree'],
    \ }
\ })

if has('persistent_undo')
    let &undodir=expand('<sfile>:p:h').'/tmp'
    set undofile
    set undolevels=100
endif

let g:undotree_SplitLocation = 'botright'

nnoremap <leader>u :UndotreeToggle<cr>
