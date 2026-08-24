" Estás son las binds del rey en vendas

" ---

" Mapleader key

" Poner espacio como leader key
let mapleader = " "

" ---

" Explorer

" Abrir netrw con <leader>cd
nnoremap <leader>cd :Ex<CR>

" ---

" Editor

" Desplazar lineas de abajo con J y que no se vaya a la verga.
nnoremap J mzJ`z

" Mover las lineas (like Alt-Up/Down)
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Scroll half-page and center cursor
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center on next/previous search result
nnoremap n nzzzv
nnoremap N Nzzzv

" pegar sin sobreescribir el portapapeles
xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Yank via OSCYank
nmap <leader>y <Plug>OSCYankOperator
vmap <leader>y <Plug>OSCYankVisual

" Doge doc generator (generar documentación por alguna razón
nnoremap <leader>dg :DogeGenerate<CR>

" subtituir la palabra debajo del cursor
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" ---

" Navigation

" Location list navigation
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" ---

" Quickfix

" Moverse de la lista de quickfix usando Ctrl-j/k
nnoremap <C-j> :lnext<CR>
nnoremap <C-k> :lprev<CR>
nnoremap <leader>cl :lclose<CR>

" Utils - Dbug

" Make current file executable
nnoremap <leader>x :!chmod +x %<CR>

" ---

" Patches (?)

" Disable Ex mode (accidental Q)
nnoremap Q <nop>

" ---

" Reload vimrc and source

" Reload vimrc (adjust path as needed)
nnoremap <leader>rl :source ~/.vim/vimrc<CR>

" Source current file
nnoremap <leader><leader> :so<CR>

" ---
