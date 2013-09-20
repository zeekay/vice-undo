if version < 703
    finish
endif

call vice#Extend({
    \ 'commands': {
        \ 'UndotreeToggle': ['github:mbbill/undotree'],
    \ }
\ })

let &undodir=expand('<sfile>:p:h').'/tmp'
set undofile
set undolevels=100

let g:undotree_SplitLocation = 'botright'

nnoremap <leader>u :UndotreeToggle<cr>
