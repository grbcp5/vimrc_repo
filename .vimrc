let mapleader = "\<Space>"

nnoremap <leader>rv :source $MYVIMRC<CR>

syntax enable
set number
set whichwrap+=<,>,h,l,[,]
hi Comment guifg=#80a0ff ctermfg=green
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set cindent

inoremap { {<CR>}<UP><Esc>A

function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

nnoremap <leader>s :wa<CR><CR>

set nowrap

colo ron 
