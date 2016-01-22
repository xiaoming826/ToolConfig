
"encoding
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [%l,%v][%p%%]\ [LEN=%L]
set laststatus=2
set nu
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8


"encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1


"indent
set autoindent


filetype plugin indent on
autocmd FileType python setlocal et sta sw=4 sts=4
autocmd FileType html setlocal et sta sw=4 sts=4
autocmd FileType php setlocal et sta sw=4 sts=4
autocmd FileType javascript setlocal et sta sw=4 sts=4
autocmd FileType sh setlocal et sta sw=4 sts=4
autocmd FileType cpp setlocal expandtab sta shiftwidth=2 softtabstop=2
autocmd FileType c setlocal expandtab sta shiftwidth=2 softtabstop=2




set hlsearch "搜索高亮显示
set ic "搜索忽略大小写
set shell=bash\ --login
"colorscheme eveningset nowrap

"语法高亮显示
syntax enable
syntax on


autocmd FileType python ab .8 #encoding=utf-8<CR>import sys<CR>reload(sys)<CR>sys.setdefaultencoding("utf-8")<CR><CR><CR>
autocmd FileType python ab .m if __name__ == '__main__':<CR>pass
autocmd FileType python ab .t try:<CR><BS>except Exception, e:<CR>print "error",e
autocmd FileType python ab try try:<CR><BS>except Exception, e:<CR>print "error",e
autocmd FileType python ab .e except Exception, e:<CR>print "error",e
autocmd FileType python ab .r (year%400==0) or (year%4==0 and year%100!=0)
autocmd FileType python ab runnian (year%400==0) or (year%4==0 and year%100!=0)
autocmd FileType python ab gcd def gcd(a,b):<CR>if a < b:<CR>a,b = b,a<CR><BS>while b != 0:<CR>a,b = b,a%b<CR><BS>return a
