" 插件管理
call plug#begin('~/.vim/plugged')
	Plug 'vim-airline/vim-airline'
	Plug 'scrooloose/nerdtree'
	Plug 'davidhalter/jedi-vim'
	Plug 'connorholyday/vim-snazzy'
call plug#end()
color snazzy
" 前提得安装 pip3 install jedi
" 设置
set ignorecase
" 设置行号
set number
set showcmd
set wildmenu
" 高亮
set hlsearch
exec "nohlsearch"
set incsearch

"关闭vi兼容模式"
set nocompatible

"设置历史记录步数"
set history=1000


"当文件在外部被修改时，自动更新该文件"
set autoread

"带有如下符号的单词不要被换行分割"
set iskeyword+=_,$,@,%,#,-

"被分割的窗口间显示空白，便于阅读"
set fillchars=vert:\ ,stl:\ ,stlnc:\

"自动换行”
set wrap

"显示标尺"
set ruler

"设置命令行的高度"
set cmdheight=1

"允许空格键和光标键跨越行边界"
set whichwrap+=<,>,h,l

"高亮显示匹配的括号([{和}])"
set showmatch

"匹配括号高亮的时间（单位是十分之一秒）"
set mat=2

"光标移动到buffer的顶部和底部时保持3行距离"
set scrolloff=3

"用浅色高亮显示当前行"
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul

"设置编码"
set encoding=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"设置文件编码"
set fileencodings=utf-8

"设置终端编码"
set termencoding=utf-8

"设置语言编码"
set langmenu=zh_CN.UTF-8
set helplang=cn

"共享剪切板"
set clipboard+=unnamed

"自动保存"
set autowrite
