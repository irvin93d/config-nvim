Plug 'kaicataldo/material.vim'

function PluginCbMaterial()
  colorscheme material
endfunction

let g:plug_callbacks += [function('PluginCbMaterial')]
let g:material_terminal_italics = 1
