" colorscheme molokayo
colorscheme wombat256mod
set guifont=Inconsolata\ for\ Powerline:h14
autocmd VimResized * wincmd =

"Stuff from Janus {{{
  let macvim_hig_shift_movement = 1 " mvim shift-arrow-keys
  " Map command-[ and command-] to indenting or outdenting
  " while keeping the original selection in visual mode
  vmap <D-]> >gv
  vmap <D-[> <gv

  nmap <D-]> >>
  nmap <D-[> <<

  omap <D-]> >>
  omap <D-[> <<

  imap <D-]> <Esc>>>i
  imap <D-[> <Esc><<i

  " Bubble single lines
  nmap <D-Up> [e
  nmap <D-Down> ]e
  nmap <D-k> [e
  nmap <D-j> ]e
" }}}
