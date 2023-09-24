let g:floaterm_position = 'topright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.8
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
  let g:floaterm_shell = 'powershell -nologo'
endif

let g:floaterm_keymap_new = '<Leader>ft'
let g:floaterm_keymap_kill = "<Leader>kt"
let g:floaterm_keymap_prev = "<Leader>pt"
let g:floaterm_keymap_next = "<Leader>pn"
let g:floaterm_keymap_toggle = "<Leader>tt"
command! Rg FloatermNew --width=0.8 --height=0.8 rg
autocmd User FloatermOpen        " triggered after opening a new/existed floatero:
" Hotkey: \ + rg
nmap <leader>rg :Rg<CR>
hi FloatermNC guifg=gray
autocmd User FloatermOpen        " triggered after opening a new/existed floaterm

