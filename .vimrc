"总体配置
set nocompatible
set noswapfile
autocmd! bufwritepost .vimrc source ~/.vimrc

"配置主题\背景颜色

"自定义快捷键
nnoremap ss :w<CR>
nnoremap qqq :qa!<CR>

nnoremap qo :q!<CR>
nnoremap gw <C-w><C-w>
"基于插件的补全
noremap <C-f> <C-x><C-o>

"界面布局配置
set nu
filetype plugin indent on
filetype off

"插件管理
call plug#begin('~/.vim/plugged')

Plug 'vim-scripts/taglist.vim'
noremap <F6> :TlistToggle<CR>

Plug 'bling/vim-airline'

Plug 'vim-scripts/The-NERD-tree'
nnoremap <F3> :NERDTreeToggle<CR>

Plug 'ludovicchabant/vim-gutentags'
"" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
"" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
    silent! call mkdir(s:vim_tags, 'p')
endif
"" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--fields=+niazS','--extra=+q']
let g:gutentags_ctags_extra_args +=['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_modules = ['ctags']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
let g:gutentags_ctags_tagfile = '.tags'


Plug 'nsf/gocode'

Plug 'fatih/vim-go'

au FileType go nmap gi <Plug>(go-def-vertical)
au FileType go nmap go <C-T>
let g:godef_same_file_in_same_window=1 """函数在同一个文件中时不需要打开新窗口

Plug 'ervandew/supertab'

Plug 'vim-syntastic/syntastic'

Plug 'kien/ctrlp.vim'

Plug 'w0rp/ale'

Plug 'christoomey/vim-tmux-navigator'

let g:syntastic_go_checkers = ['go']
let g:syntastic_php_checkers = ['php']

call plug#end()


