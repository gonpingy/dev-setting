" vi互換モード
set nocompatible
filetype off
filetype plugin indent off

if has('vim_starting')
  if &compatible
    set nocompatible " Be iMproved
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" プラグイン管理
" http://vim-users.jp/2011/10/hack238/
NeoBundle 'Shougo/neobundle.vim'
" 補完
NeoBundle 'Shougo/neocomplcache'
" エンコーディング
" http://d.hatena.ne.jp/shizu9/20090402/1238697718
NeoBundle 'banyan/recognize_charcode.vim'
" vim上でプログラム実行
NeoBundle 'thinca/vim-quickrun'
" シンタックスチェック
NeoBundle 'scrooloose/syntastic'
" PHP辞書
NeoBundle 'nishigori/vim-php-dictionary'
" HTMLスニペット
" https://github.com/mattn/zencoding-vim/blob/master/doc/zencoding.txt
NeoBundle 'mattn/zencoding-vim'
" バッファをタブ風に管理
" http://nanasi.jp/articles/vim/minibufexpl_vim.html
NeoBundle 'fholgado/minibufexpl.vim'
" スニペット
NeoBundle 'msanders/snipmate.vim'
" コメントトグル
NeoBundle 'scrooloose/nerdcommenter'
" svn、gitコマンド
" http://blog.blueblack.net/item_144
NeoBundle 'vcscommand.vim'
" processing
" https://github.com/sophacles/vim-processing
" http://kazuph.hateblo.jp/entry/2013/03/20/211336
NeoBundle 'sophacles/vim-processing'
" Node.vim
NeoBundle 'moll/vim-node'
" 以前開いたファイル履歴表示
NeoBundle 'mhinz/vim-startify'

call neobundle#end()

" プラグイン読み込み
filetype plugin indent on

" jslint
"function! s:javascript_filetype_settings()
"  autocmd BufLeave     <buffer> call jslint#clear()
"  autocmd BufWritePost <buffer> call jslint#check()
"  autocmd CursorMoved  <buffer> call jslint#message()
"endfunction
"autocmd FileType javascript call s:javascript_filetype_settings()

" エンコーディング
" デフォルトエンコーディング
set encoding=utf-8
" 改行
set ffs=unix,dos,mac

" 表示
" タブをスペースへ置換
set expandtab
" 入力されているタブを置換する際のスペースの文字数
set tabstop=2
" インデントで自動挿入される際のスペースの文字数
set shiftwidth=2
" タブを入力した際のスペースの文字数
set softtabstop=2
" 行番号表示
set nu
" 不可視文字表示
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,eol:\
" モード表示
set showmode
" 括弧の対応表示
set showmatch
" 自動インデント
set autoindent
" ステータスライン表示
set laststatus=2
set statusline=%<%f\ %m%r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v\ %l/%L
" 検索時に大文字小文字区別なし
set ignorecase
" 検索結果ハイライト
set hlsearch
" 暗めの背景色
set background=dark
" シンタックスハイライト
syntax enable

" キーマッピング
" 矩形選択
nmap <Space> <C-v>

" 編集中のファイルをプログラムとして実行
" コマンドをコマンドラインに非表示
silent! nmap <unique> ,r <Plug>(quickrun)

nmap <Space>m :<C-u>w<CR>:make<CR>

" 新規タブ作成
" nmap t. :tabnew .<CR>

" ハイライトを消す
nmap <C-h> :nohl<CR>

" ウインドウ
nmap mw <C-w><C-w>

" 関数を削除（関数の中でコマンドを使用しないといけない）
" コメントは消えない
nmap df jdi{k2dd

" 置換
nmap s :%s/

" 関数を検索
nmap sf /function<CR>

" mark 用
nmap <C-m> `

" ファイル内のパスをタブで開く
nmap gf :tabe <cfile><CR>

" return true;挿入
imap <C-r><C-t> return true;
nmap <C-r><C-t> ireturn true;<CR><ESC>

" console.log(挿入
imap <C-c><C-l> console.log(<ESC>a
nmap <C-c><C-l> Oconsole.log(<ESC>a

" var_dump(挿入
imap <C-v><C-d> var_dump(<ESC>a
nmap <C-v><C-d> Ovar_dump(<ESC>a

" vimdiff
nmap vd :vertical diffsplit 

" 自動コマンド
" PHPのシンタックスチェック
" autocmd filetype php :setlocal makeprg=php\ -l\ %
" autocmd filetype php :setlocal errorformat=%m\ in\ %f\ on\ line\ %l

" autocmd filetype javascript :setlocal makeprg=jslint\ %
" autocmd filetype javascript :setlocal errorformat=%-P%f,\%*[\ ]%n\ %l\\,%c:\ %m,\%-G\ \ \ \ %.%#,\%-GNo\ errors\ found.,\%-Q

" その他
" スワップファイルを作成しない
set noswapfile
" 垂直分割の際に新しいウインドウを右に開く
set splitright
" 水平分割の際に新しいウインドウを下に開く
set splitbelow

" neocomplcache
" 補完オン
let g:neocomplcache_enable_at_startup = 1
" http://www.karakaram.com/vim/neocomplcache/
let g:neocomplcache_enable_at_startup = 1 " neocomplcache有効
let g:neocomplcache_enable_smart_case = 1 " 大文字小文字を区別する
let g:neocomplcache_enable_camel_case_completion = 1 "
" キャメルケース補完を有効にする
let g:neocomplcache_enable_underbar_completion = 1 "
" アンダーバー補完を有効にする
let g:neocomplcache_min_syntax_length = 3 "
" シンタックスファイルの補完対象キーワードとする最小の長さ
let g:neocomplcache_max_list = 20 " ポップアップで表示される補完候補の数

"オムニ補完
augroup SetOmniCompletionSetting
autocmd!
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
augroup END

" プラグイン毎の補完関数を呼び出す文字数
let g:neocomplcache_plugin_completion_length = {
\ 'keyword_complete' : 2,
\ 'syntax_complete' : 2
\ }

" ファイルタイプ毎の辞書ファイルの場所
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'php' : $HOME . '/.vim/bundle/vim-php-dictionary/dict/PHP.dict',
\ }

" syntastic
" syntasticオン
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
" ファイルを開いた時点でシンッタックスチェック
let g:syntastic_check_on_open = 1
" シンタックスエラーに自動でジャンプ
let g:syntastic_auto_jump = 1
let g:syntastic_enable_highlighting = 1
" シンタックスチェック対象
let g:syntastic_mode_map = {
  \ 'mode': 'passive',
  \ 'active_filetypes': ['php', 'javascript'],
  \ 'passive_filetypes': []
\ }
let g:syntastic_javascript_jslint_conf = "--white --undef --nomen --regexp --plusplus --bitwise --newcap --sloppy --vars"

" nerdcommenter
let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

" vim-processing
let g:quickrun_config = {}
let g:quickrun_config.processing =  {
 \ 'command': 'processing-java',
 \ 'exec': '%c --sketch=$PWD/ --output=~/Library/Processing --run --force',
 \  }

set rtp+=$GOROOT/misc/vim
