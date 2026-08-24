set laststatus=2
let g:lightline = {
      \ 'colorscheme' : 'tokyonight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ],
      \   'right': [ [ 'lineinfo' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \   'filename': 'LightlineFilename'
      \ }
      \ }

function! LightlineFilename()
  return expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

" ==========================================
" Script de Transparencia para Lightline
" ==========================================

autocmd VimEnter * call SetupLightlineTransparent()

function! SetupLightlineTransparent() abort
  if !exists('g:lightline')
    return
  endif
  let l:p = lightline#palette()
  for s:key in keys(l:p)
    if type(l:p[s:key]) == v:t_dict
      for s:subKey in keys(l:p[s:key])
        let l:p[s:key][s:subKey] = map(l:p[s:key][s:subKey], '[v:val[0], "NONE", v:val[2], "NONE"]')
      endfor
    endif
  endfor
  call lightline#colorscheme()
endfunction
