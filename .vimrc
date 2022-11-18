"===================================================="
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'akinsho/bufferline.nvim'
Plug 'mhinz/vim-startify'
Plug 'liuchengxu/space-vim-theme'
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'cocopon/iceberg.vim'
Plug 'marcopaganini/termschool-vim-theme'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }

call plug#end()
"====================================================="
set smarttab
set tabstop=4
set shiftwidth=4

set softtabstop=0       " 关闭softtabstop 永远不要将空格和tab混合输入
"set cursorline         " 高亮光标所在行
set ruler
set magic

set clipboard=unnamed  "共享剪贴板

set autoindent
set smartindent
let mapleader = ";"     "让<leader> 变成空格,可以试试用；代替
syntax on
set backspace=indent,eol,start
set softtabstop=4
"set cursorline          " 底下的线
set wrap                " 让行不超过当前的窗口限定
set wildmenu            "命令模式下可以补全命令
set incsearch           "边输入边高亮
set ignorecase          "忽略大小写
set smartcase           "智能识别大小写
set scrolloff=5         "永远让最底下显示5行内容
set encoding=utf-8
set number


set showmatch  " 高亮显示匹配的括号

let g:Tlist_Ctags_Cmd='/usr/bin/ctags'

"set rnu
"=======================================键位修改（Emacs 相同键位）=======================================
imap<C-f>  <Right>
imap<C-p>  <Up>
imap<C-n>  <Down>
imap<C-b>  <Left>
imap<C-a>  <Home>
imap<C-e>  <End>
imap<C-d>  <Delete>
imap<C-h>  <Backspace>
"imap<C-k>  <Esc>
imap<LEADER>w <Esc><Right>
imap<C-k>  <Esc><Right>v<End><Left><Delete>i<Right>


"inoremap jj <Esc> " 在编辑模式将 jj 映射为 Esc
"vmap jj <Esc> "在可视化模式下将 jj 映射为 Esc
"<<------------------->>
map <LEADER>os :set spell<CR>
map <LEADER>cs :set spell!<CR>
map <LEADER>on :set number<CR>
map <LEADER>cn :set nonumber<CR>

:map<C-f> <Right> 
:map<C-p> <Up>
:map<C-n> <Down>
:map<C-b> <Left>
:map<C-a> <Home>
:map<C-e> <End>
"map ll <PageDown>   -> 默认的 Ctrl + u 可以代替 （普通模式）
"map hh <PageUp>     -> 默认的 Ctrl + d 可以代替 （普通模式）

"<<-------------------Table 的翻页快捷键------------------->>
nmap [[  <C-PageUp>
nmap ]]  <C-PageDown>
"<<-------------------Buffer的翻页快捷键------------------->>
nmap <S-Tab> :bp<CR> 
nmap <Tab> :bn<CR>

noremap <LEADER><CR> :nohlsearch<CR> "搜索后取消高亮
map R :source $MYVIMRC<CR> "刷新配置
map s <nop>
"map <LEADER>s :w<CR>
map <LEADER>w :w<CR>
map <LEADER>q :q<CR>


"<<-------------------扩大缩小窗口------------------->>
map <C-l> :vertical resize +5<CR>
map <C-h> :vertical resize -5<CR>
map <C-k> :resize -5<CR>
map <C-j> :resize +5<CR>
"map <LEADER><Right> :vertical resize +5<CR>
"map <LEADER><Left> :vertical resize -5<CR>
"map <LEADER><Up> :resize -5<CR>
"map <LEADER><Down> :resize +5<CR>


"======== Color ========

"settransparency=10  可能是Vim的命令,调节透明度
set termguicolors
let g:space_vim_transp_bg = 1 "这个要先放上面
"set background = "light"
set background = "dark"
"colorscheme iceberg
colorscheme embark
"color space_vim_theme

""======================AirLine Setting=========================
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
" Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
  set encoding=utf-8
  set langmenu=zh_CN.UTF-8
" 设置打开文件的编码格式
  set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
  set fileencoding=utf-8
" 解决菜单乱码
  source $VIMRUNTIME/delmenu.vim
  source $VIMRUNTIME/menu.vim
" 解决consle输出乱码
"set termencoding = cp936
" 设置中文提示
  language messages zh_CN.utf-8
" 设置中文帮助
  set  helplang=cn
" 设置为双字宽显示，否则无法完整显示如:☆
  set ambiwidth=double
" 总是显示状态栏
  let  laststatus = 2
  let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体
  let g:airline_theme="light"      " 设置主题
  let g:airline#extensions#tabline#enabled = 1      " 开启tabline
  let g:airline#extensions#tabline#left_sep = ''   "tabline中未激活buffer两端的分隔字符
  let g:airline#extensions#tabline#left_alt_sep = ''      "tabline中buffer显示编号
"  let g:airline#extensions#tabline#buffer_nr_show = 1
  let g:airline#extensions#whitespace#enabled = 0
  let g:airline#extensions#whitespace#symbol = '!'
  let g:airline#extensions#tabline#buffer_idx_mode = 1
"  let g:airline#extensions#tabline#buffer_idx_format = {
"  \ '0': '0 ',
"  \ '1': '1 ',
"  \ '2': '2 ',
"  \ '3': '3 ',
"  \ '4': '4 ',
"  \ '5': '5 ',
"  \ '6': '6 ',
"  \ '7': '7 ',
"  \ '8': '8 ',
"  \ '9': '9 '
"  \} " 让 tabe 编号变大，暂时不需要
"
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
"  "===============记号位=================

  if !exists('g:airline_symbols')
"""定义函数SetTitle，自动插入文件头
  let g:airline_symbols = {}
  endif


  "左側に使用されるセパレータ
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  "右側に使用されるセパレータ
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.crypt = '🔒'    "暗号化されたファイル
  let g:airline_symbols.linenr = '¶'      "行
  let g:airline_symbols.maxlinenr = '㏑'    "最大行
  let g:airline_symbols.branch = '⭠'    "gitブランチ
  let g:airline_symbols.paste = 'ρ'      "ペーストモード
  let g:airline_symbols.spell = 'Ꞩ'      "スペルチェック
  let g:airline_symbols.notexists = '∄'    "gitで管理されていない場合
  let g:airline_symbols.whitespace = 'Ξ'  "空白の警告(余分な空白など)
"  set guifont=Powerline_Consolas:h14:cANSI

"======================AirLine Setting=========================



"===================================================="

" pathogen plugin manager
execute pathogen#infect()
" syntax on
filetype plugin indent on

"高亮搜索关键词"
let g:ackhighlight = 1
"修改快速预览窗口高度为15
let g:ack_qhandler = "botright copen 15"
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
"set autocmd
set autoindent		" always set autoindenting on 自动缩进
" indent C++ autoindent private public keyword 
set cindent
set cinoptions=g-1
"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif
set nobackup        "I hate backup files.
set number
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
"设置非兼容模式
set nocp

"set encoding=utf-8
""set encoding=gb2312
set langmenu=zh_CN.gb2312
language message zh_CN.gb2312

set fileencoding=gbk2312
set ts=4
set sw=4
set smartindent
set showmatch        " Show matching brackets.
set guioptions-=T
set expandtab

let curpwd = getcwd()
" vim自身命令行模式智能补全
set wildmenu

" 不产生.swp文件
set noswapfile

" 禁止光标闪烁
" set gcr=a:block-blinkon0

" ack搜索时不打开第一个搜索文件
map <Leader>fw :Ack! <Space>
" AckFile不打开第一个搜索文件
map <Leader>ff :AckFile!<Space>
" 定义快捷键 关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键
nmap <Leader>w :w<CR>
" 删除光标所在单词
nmap e daw
" close TAB
nmap tabc :tabc <CR>
" go to previous table
map gp :tabp <CR>
" 定义快捷键 跳转到光标所在关键词的定义处
" here are multiple matches, show me a list of all the matching tags 
"nmap <Leader>gt g<C-]>
" 定义快捷键 跳回原关键词 与 ;gr 配合使用
"nmap <Leader>gr <C-T>
" 向下翻半屏
"nmap <Leader>u <C-U>
" 向上翻半屏
"nmap <Leader>d <C-D>
" 快速移动到行首，行尾
"""定义函数SetTitle，自动插入文件头
"map <Leader>1 ^
"map <Leader>2 $
" 补全提示
""nmap <Leader>p <C-P>
" 快速切换C H源文件
nmap <Leader>a :A<CR>

"快速切换到上一个文件
" nmap <Leader>j :bn<CR>
" nmap <Leader>k :bp<CR>

" 设置快捷键gs遍历各分割窗口。快捷键速记法：goto the next spilt window
"nnoremap <Leader>gg <C-W><C-W>

" 向左
"nnoremap <leader>h <C-W><C-H>
" 向右
"nnoremap <leader>l <C-W><C-L>
" 向上
"nnoremap <Leader>k <C-W><C-K>
" 向下
"nnoremap <Leader>j <C-W><C-J>
" 去除高亮
"nmap <Leader>h :noh<CR>
" 打开文件
nmap <Leader>e :e<Space>
" 不关闭文件推出
nmap <Leader>z <C-Z>
" 水平分隔
nmap <Leader>s :Sex<CR>
" 竖直分隔
nmap <Leader>v :Vex<CR>
" 全局替换
nmap <Leader>r :%s/fileName-/fileName+/g
" align 表格对齐
nmap <Leader>t :Tab /
" 打tag
" --c++-kinds=+p  : Adds prototypes in the database for C/C++ files.
"--fields=+iaS   : Adds inheritance (i), access (a) and function
"                  signatures (S) information.
"--extra=+q      : Adds context to the tag name. Note: Without this
"                  option, the script cannot get class members.
nmap<leader>tg :!ctags -R --fields=+aS --extra=+q<CR>
" java jdk 补全
map! <C-O> <C-X><C-O>
" 使用NERDTree插件查看工程文件。设置快捷键
nnoremap <silent> <Leader>n  :NERDTreeToggle <CR> 
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 设置忽略的文件
let NERDTreeIgnore=['\.vim$', '\~$', '\.o$', '\.d$', '\.a$', '\.out$', '\.tgz$']
"
"在VIM启动时自动开启NerdTree
"autocmd VimEnter * NERDTree

" 使用TlistToggle查看文件函数列表。设置快捷键：<F12>
nnoremap  <Leader>m  :TlistToggle <CR> 
" 粘贴到系统剪切板
"map <Leader>y "*y
"禁止自动改变当前Vim窗口的大小
let Tlist_Inc_Winwidth=0
"把方法列表放在屏幕的右侧
let Tlist_Use_Right_Window=1
"让当前不被编辑的文件的方法列表自动折叠起来
let Tlist_File_Fold_Auto_Close=1 
" let g:winManagerWindowLayout='FileExplorer'
" 定义快捷键 打开/关闭 winmanger
" nmap wm :WMToggle<cr>
" let g:winManagerWidth=20
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 根据侦测到的不同类型采用不同的缩进格式
filetype indent on

" 取消补全内容以分割子窗口形式出现，只显示补全列表
" set completeopt=longest,menu

"cs add $curpwd/cscope.out $curpwd/
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
set cscopequickfix=s-,c-,d-,i-,t-,e-


" VIM支持多种文本折叠方式，我VIM多用于编码，所以选择符合编程语言语法的代码折叠方式。
" set foldmethod=syntax
" 启动vim时打开所有折叠代码。
set nofen

let cwd=""
set tags=tags
"cs add cscope.out 
let g:miniBufExplMapWindowNavArrows = 1
"允许光标在任何位置时用CTRL-TAB遍历buffer
let g:miniBufExplMapCTabSwitchBufs = 1

"设置winmanager窗口宽度
"let g:winManagerWidth = 30 

" 重新打开文档时光标回到文档关闭前的位置
if has("autocmd")
 autocmd BufReadPost *
 \ if line("'\"") > 0 && line ("'\"") <= line("$") |
 \ exe "normal g'\"" |
\ endif
endif


"花括号自动格式化，首行一个tab
""autocmd FileType cpp,java inoremap { {<CR>}<ESC>kA<CR>

"显示匹配

set mouse=n "可视模式下使用鼠标，set mouse=a这个命令导致在vim下复制粘贴不好用
set ai "vim中复制粘贴保存格式
set ignorecase "设置默认大小写不敏感查找
set smartcase "如果有大小写字母，则切换到大小写敏感查找
set tags=tags;/ "告诉在每个目录下如果找不到tags就到上一层目录去找
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1


set ruler           " 显示标尺"
"autocmd InsertEnter * se cul    " 用浅色高亮当前行"
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示

" :colorscheme desert     " 设置主题
" vim-commentary style set 注释针对不同语言的注释方法
autocmd FileType cpp set commentstring=//\ %s
autocmd FileType php set commentstring=//\ %s
" set modeline
set modeline
" 搜索关键词高亮
set hlsearch
" 开启语义分析
syntax enable
syntax on
" 使用ctrlc, v就可以实现vim之间的复制粘贴
vnoremap <C-c> :w! ~/tmp/clipboard.txt <CR>
inoremap <C-v> <Esc>:r ~/tmp/clipboard.txt <CR>
" 编译快捷键
autocmd filetype python nnoremap <F1> :w <bar> exec '!python '.shellescape('%')<CR> autocmd filetype c nnoremap <F1> :w <bar> exec '!gcc '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
autocmd filetype cpp nnoremap <F1> :w <bar> exec '!g++ --std=c++11 -pthread '.shellescape('%').' -o ./bin/'.shellescape('%:r').' && ./bin/'.shellescape('%:r')<CR>
" autocmd filetype dot nnoremap <F1> :w <bar> exec '!dot -Tsvg '.shellescape('%').' > ./svg/'.shellescape('%:r').' && open ./bin/'.shellescape('%:r')<CR>
autocmd filetype dot nnoremap <F1> :w <bar> exec '!dot -Tsvg sqlparse.dot > sqlparse.svg'<CR>
autocmd Filetype java nnoremap <F1> :w <bar> exec '!javac '.shellescape('%'). ' -d ./bin'<CR>
autocmd filetype java nnoremap <F2> :w <bar> exec '!java -cp ./bin '.shellescape('%:r')<CR>


let g:tlist_markdown_settings = 'markdown;h:Headlins'
"新建.c,.h,.sh,.Java文件，自动插入文件头
"autocmd BufNewFile *.cpp,*.[ch],*.sh,*.Java,*.go exec ":call SetTitle()"
" 创建时间快捷键for markdown
nmap tm :call SetTime() <CR>
func SetTime()
        call append(line("."), "\# ".strftime('%a %d %b %Y'))
endfunc

nmap tb :call SetTable() <CR>
func SetTable()
        call append(line("."), "\| | | ")
        call append(line(".")+1, "\|---|---|")
        call append(line(".")+2, "\| | |")
endfunc

nmap pc :call SetPic() <CR>
func SetPic()
        call append(line("."), "\<img src='' width=600 alt=''> </img></div>")
endfunc

nmap pi :call SetPic1() <CR>
func SetPic1()
        call append(line("."), "\![]()")
endfunc

nmap vi :call SetVideo() <CR>
func SetVideo()
        call append(line("."), "\<video src='1.mp4' controls='controls' width='640' height='320' autoplay='autoplay'> Your browser does not support the video tag.</video></div>")
endfunc

nmap cl :call SetCollor() <CR>
func SetCollor()
        call append(line("."), "<span  style='color: #f16707;'> </span>")
endfunc

" vim cc
nmap cc :call SetCC() <CR>
func SetCC() 
    call append(line("."), "// vim: et tw=100 ts=4 sw=4 cc=120")  
endfunc

" Hello，我是PowerVim的作者，程序员Carl，欢迎关注我的微信公众号：代码随想录 

" 添加自动补全字典
au FileType php setlocal dict+=~/.vim/dictionary/php_keywords_list.txt
au FileType cpp setlocal dict+=~/.vim/dictionary/cpp_keywords_list.txt
au FileType java setlocal dict+=~/.vim/dictionary/java_keywords_list.txt
" au FileType markdown setlocal dict+=~/.vim/dictionary/words.txt

" for vim-syntastic 
" disabled Syntastic by default 
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
" open/close Syntastic checker
nnoremap <Leader>p :SyntasticToggleMode<CR> :w<CR>
" set vim-syntastic compiler 
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"
" test
" 自动已当前文件为根目录，可能会影响使用:Vex的，我在mac是ok的，但是在centos下:Vex功能错乱了
" set autochdir
autocmd BufEnter * silent! lcd %:p:h
" 需要在哪个目录有类函数补全功能，就加载哪个目录的tags 
" set tags+=/Users/XXX/Documents/workplace/brpc/tags

" complete with no first suggestion 
" :set completeopt+=noinsert

set completeopt=menu,menuone  
let OmniCpp_MayCompleteDot=1    "  打开  . 操作符
let OmniCpp_MayCompleteArrow=1  " 打开 -> 操作符
let OmniCpp_MayCompleteScope=1  " 打开 :: 操作符
let OmniCpp_NamespaceSearch=1   " 打开命名空间
let OmniCpp_GlobalScopeSearch=1  
let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1  " 打开显示函数原型
let OmniCpp_SelectFirstItem = 2 " 自动弹出时自动跳至第一个
autocmd BufRead scp://* :set bt=acwrite
" au FileType * setlocal dict+=~/.vim/dictionary/words.txt
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_JavaCompiler="/Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home/bin/javac"
" for JavaComplete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <Leader>o o<Esc>

:set syntax=markdown
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
" au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown 
" for me
func MarkdownSet() 
    let filePath=expand('%:p')
    exe ':!open ' . filePath '-a "MacDown"'
endfunc

" usage :call GenMarkdownSectionNum    给markdown 文件生成目录编号
function! GenMarkdownSectionNum()
  if &ft != "markdown"
    echohl Error
    echo "filetype is not markdown"
    echohl None
    return
  endif

  let lvl = []
  let sect = []
  let out = ""
  for i in range(1, line('$'), 1)
    let line = getline(i)
    let heading_lvl = strlen(substitute(line, '^\(#*\).*', '\1', ''))
    if heading_lvl < 2
      continue
    endif
    " there should be only 1 H1, topmost, on a conventional web page
    " we should generate section numbers begin with the first heading level 2
    if len(lvl) == 0
      if heading_lvl != 2 " count from level 2
        echohl Error
        echo "subsection must have parent section, ignore illegal heading line at line " . i
        echohl None
        continue
      endif
      call add(sect, 1)
      call add(lvl, heading_lvl)
    else
      if lvl[-1] == heading_lvl
        let sect[-1] = sect[-1] + 1
      elseif lvl[-1] > heading_lvl " pop all lvl less than heading_lvl from tail
        while len(lvl) != 0 && lvl[-1] > heading_lvl
          call remove(lvl, -1)
          call remove(sect, -1)
        endwhile
        let sect[-1] = sect[-1] + 1
      elseif lvl[-1] < heading_lvl
        if heading_lvl - lvl[-1] != 1
          echohl Error
          echo "subsection must have parent section, ignore illegal heading line at line " . i
          echohl None
          continue
        endif
        call add(sect, 1)
        call add(lvl, heading_lvl)
      endif
    endif

    let cur_sect = ""
    for j in sect
      let cur_sect = cur_sect . "." . j
    endfor
    let cur_sect = cur_sect[1:]
    let out = out . " " . cur_sect
    call setline(i, substitute(line, '^\(#\+\) \?\([0-9.]\+ \)\? *\(.*\)', '\1 ' . cur_sect . ' \3', line))
  endfor
  " echo lvl sect out
  echo out
endfunc
