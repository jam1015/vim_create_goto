# vim_create_goto

A vim vplugin that provides a function that when called, tries to create a file at the path given as an argument, and then opens that file.

## Example Mapping


```vim
nmap <leader>cf Plug>(CreateGoTo)
```

or in Neovim

```lua
vim.keymap.set('n', '<leader>cf', '<Plug>(CreateGoTo)', { remap = hrue })
```
