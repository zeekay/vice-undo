if has('persistent_undo')
    let &undodir=g:vice.vim_dir.'/tmp/undo'
    set undofile
    set undolevels=100
endif

if version < 703 | finish | endif

call vice#Extend({
    \ 'commands': {
        \ 'UndotreeToggle': ['github:mbbill/undotree'],
    \ }
\ })

let g:undotree_SplitLocation = 'botright'

nnoremap <leader>u :UndotreeToggle<cr>
