" `nocompatible` 可以通过取消vi兼容模式来启动vim更好用的功能
" 如果是使用'~/.vimrc'作配置文件, 默认就是不兼容模式. 这里设置
" 是为了以防配置文件是其他名字
set nocompatible

" 开启高亮
syntax on

" 禁用默认启动信息
set shortmess+=I

" 即使只有一个 window 也在底部显示状态栏
set laststatus=2

" 允许 <bs> 键删除缩进, 换行符, 以及非本次insert模式新增的字符.
" 尽管至少在wsl2-ubuntu中, 默认设置即是如此
" https://vi.stackexchange.com/questions/2162/why-doesnt-the-backspace-key-work-in-insert-mode
set backspace=indent,eol,start

" 允许隐藏 buffer. 比如当编辑了一个文件但未保存时, 可以使用 `:e anotherfile` 
" 隐藏当前的buffer, 打开另一个文件, 而不是报错
" https://vimtricks.com/p/what-is-set-hidden/
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
" set ignorecase
" set smartcase

" Enable searching as you type, rather than waiting till you press enter.
" set incsearch
" 我希望还是等我按下回车再搜索
set noincsearch

" 禁止在 nomal 模式中进入 Ex mode
nmap Q <Nop>

" 允许用鼠标 有些时候是有用的
set mouse+=a

" 禁用error提示音
set noerrorbells visualbell t_vb=

let mapleader = " "
" 定义tab键的宽度为4
set tabstop=4
" 定义自动缩进时每次缩进的宽度
set shiftwidth=4
" 将Tab键转换为空格
set expandtab
" 设置智能缩进
set smartindent
" 设置按下一个键后vim等待的时长, 默认值为2秒
set timeout timeoutlen=150
" 设置显示绝对行号
set number

" inoremap 中 i 代表 insert 模式, nore 代表 no recursive,
" 在 recursive mapping 中, 如果键 a 被映射成了 b,
" c 又被映射成了 a, 如果映射是递归的, 那么 c 就被映射成了 b.
" 默认为递归模式

" 中英文标点符号切换
inoremap <Leader>, ，
inoremap <Leader>. 。
inoremap <Leader>; ；
inoremap <Leader>: ：
inoremap <Leader>' ‘’
inoremap <Leader>" “”
inoremap <Leader>[ 【
inoremap <Leader>] 】
inoremap <Leader>! ！
inoremap <Leader>$ ￥
inoremap <Leader>^ ……
inoremap <Leader>( （
inoremap <Leader>) ）
inoremap <Leader>< 《
inoremap <Leader>> 》

" 如果当前是相对行号, 则转换为绝对行号
" 如果当前是绝对行号, 则转换为相对行号
function! ToggleLineNumberMode()
    if &relativenumber
        set number
        set norelativenumber
    elseif &number
        set relativenumber
        set nonumber
    else
        set number
    endif
endfunction

" 设置双击 <leader> 键调用切换行号模式函数
nnoremap <silent> <leader><leader> :call ToggleLineNumberMode()<CR>

" CtrlP 插件配置
" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" When invoked without an explicit starting directory, CtrlP will set 
" its local working directory according to this variable:
" 'c' - the directory of the current file.
" 'a' - the directory of the current file, unless it is a subdirectory of the cwd
" 'r' - the nearest ancestor of the current file that contains one of these directories or files: .git .hg .svn .bzr _darcs
" 'w' - modifier to "r": start search from the cwd instead of the current file's directory
" 0 or '' (empty string) - disable this feature.
let g:ctrlp_working_path_mode = 'ra'
