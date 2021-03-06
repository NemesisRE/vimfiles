setlocal nospell

hi StartifyHeader ctermfg=221 guifg=#f0c674 cterm=bold
let g:startify_custom_header = [
    \ '                     Keybindings',
    \ '    Function Keys (Work in normal- and inputmode):',
    \ '    <F1>    => Startify             <F2>    => Filebrowser',
    \ '    <F3>    => Tagbar               <F4>    => Bufferlist',
    \ '    <F5>    => Undotree             <F6>    => Extradite',
    \ '    <F7>    => NoSigns              <F8>    => None',
    \ '    <F9>    => TaskList             <F10>   => Register/Yankhistory',
    \ '    <F11>   => Denite Spell Suggest <F12>   => UnsavedDiff',
    \ '    <C-F11> => SpellToggle',
    \ '',
    \ '    Other Keys:',
    \ '    ,       => <Leader>             <C-p>   => Denite FuzzyFileFinder',
    \ '    <C-f>   => Denite Grep          <C-h>   => Denite Search Help',
    \ '',
    \ '',
    \ ]

nnoremap <silent> <F1> :<C-u>Startify<CR>
inoremap <silent> <F1> <C-o>:<C-u>Startify<CR>

let g:startify_list_order = [
    \       ['   My most recently used files in the current directory:'], 'dir',
    \       ['   My most recently used files:'], 'files',
    \       ['   These are my sessions:'], 'sessions',
    \       ['   These are my bookmarks:'], 'bookmarks',
    \       ['   Useful commands:'], 'commands',
    \   ]

let g:startify_bookmarks = [ {'V': '~/.vim/rc/vimrc'}, {'B': '~/.bashrc'}, {'Z': '~/.zshrc'} ]

if has("nvim")
    let g:startify_commands = [
            \ {'c': ['Check Health', 'checkhealth']},
            \ {'u': ['Update Vim Plugins', 'call dein#update() | :Denite -no-start-filter dein/log:!']},
            \ {'U': ['Update Remote Plugins', 'UpdateRemotePlugins']},
            \ ]
else
    let g:startify_commands = [
            \ {'u': ['Update Vim Plugins', 'call dein#update() | :Denite -no-start-filter dein/log:!']},
            \ ]
endif

let g:startify_update_oldfiles = 1
"let g:startify_disable_at_vimenter = 1
let g:startify_session_autoload = 1
let g:startify_session_persistence = 1
"let g:startify_session_delete_buffers = 0
let g:startify_change_to_dir = 0
"let g:startify_change_to_vcs_root = 0  " vim-rooter has same feature
let g:startify_skiplist = [
      \ 'COMMIT_EDITMSG',
      \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
      \ 'bundle/.*/doc',
      \ ]
