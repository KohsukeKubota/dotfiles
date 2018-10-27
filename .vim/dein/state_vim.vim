if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# '/home/kohsuke/.vim/deinrepos/github.com/Shougo/dein.vim/,/home/kohsuke/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/kohsuke/.vim/after' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/kohsuke/.vimrc', '/home/kohsuke/.vim/rc/dein.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/kohsuke/.vim/dein'
let g:dein#_runtime_path = '/home/kohsuke/.vim/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/home/kohsuke/.vim/dein/.cache/.vimrc'
let &runtimepath = '/home/kohsuke/.vim/deinrepos/github.com/Shougo/dein.vim/,/home/kohsuke/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/home/kohsuke/.vim/dein/.cache/.vimrc/.dein,/usr/share/vim/vim80,/home/kohsuke/.vim/dein/.cache/.vimrc/.dein/after,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,/home/kohsuke/.vim/after'
filetype off
    let g:jedi#use_tabs_not_buffers = 1
    let g:jedi#popup_select_first = 0
    let g:jedi#popup_on_dot = 0 
    let g:jedi#completions_command = "<TAB>"
    let g:jedi#goto_command = "<C-d>"
    let g:jedi#got_assignments_command = "<C-g>"
    let g:jedi#goto_definitions_command = "<C-d>"
    let g:jedi#documentation_command = "<C-k>"
    let g:jedi#usages_command = "<C-n>"
    let g:jedi#rename_command = "<C-r>"
    autocmd FileType python setlocal completeopt-=preview
