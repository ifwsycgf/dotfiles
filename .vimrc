"--------------------
" 基本的な設定
"--------------------
"新しい行のインデントを現在行と同じにする
set autoindent

"バックアップファイルのディレクトリを指定する
set backupdir=$HOME/.vim/vimbackup/

"クリップボードをOSと連携する
set clipboard=unnamed,autoselect

"vi互換をオフする
set nocompatible

"スワップファイル用のディレクトリを指定する
set directory=$HOME/.vim/vimbackup/

"タブの代わりに空白文字を指定する
set expandtab

"変更中のファイルでも、保存しないで他のファイルを表示する
set hidden

"インクリメンタルサーチを行う
set incsearch

"行番号を表示する
set number

"閉括弧が入力された時、対応する括弧を強調する
set showmatch

"新しい行を作った時に高度な自動インデントを行う
set smarttab

" grep検索を設定する
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
set grepprg=grep\ -nh

" 検索結果のハイライトをEsc連打でクリアする
nnoremap <ESC><ESC> :nohlsearch<CR>

" 10進数で加減算
set nrformats=


"-----ここから下は大森設定-----
set ic
set visualbell
set imdisable

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<left>
"vnoremap { "zdi^v{<c-r>z}<esc>
"vnoremap [ "zdi^V[<C-R>z]<ESC>
"vnoremap ( "zdi^V(<C-R>z)<ESC>
"vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"

" NERDTreeを設定
NeoBundle 'scrooloose/nerdtree'

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

" netcompleteを設定
" NeoBundle 'neocomplete.vim'


call neobundle#end()

" Required:
filetype plugin indent on

" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

"==========================================
"neocomplete.vim
"==========================================
"vim"use neocomplete.
"vimlet g:neocomplete#enable_at_startup = 1
"vim" Use smartcase.
"vimlet g:neocomplete#enable_smart_case = 1
"vim" Set minimum syntax keyword length.
"vimlet g:neocomplete#sources#syntax#min_keyword_length = 3
"vimlet g:neocomplete#lock_buffer_name_pattern = '¥*ku¥*'
"vim" Define dictionary.
"vimlet g:neocomplete#sources#dictionary#dictionaries = {
"vim      ¥ 'default' : '',
"vim      ¥ 'vimshell' : $HOME.'/.vimshell_hist',
"vim      ¥ 'scheme' : $HOME.'/.gosh_completions'
"vim      ¥ }
"vim" Define keyword.
"vimif !exists('g:neocomplete#keyword_patterns')
"vim  let g:neocomplete#keyword_patterns = {}
"vimendif
"vimlet g:neocomplete#keyword_patterns['default'] = '¥h¥w*'
"vim" Plugin key-mappings.
"viminoremap <expr><C-g>  neocomplete#undo_completion()
"viminoremap <expr><C-l>  neocomplete#complete_common_string()


" neocomplcache
let g:NeoComplCache_EnableAtStartup = 1
" 大文字小文字を区別する
let g:NeoComplCache_SmartCase = 1
" キャメルケース補完を有効にする
let g:NeoComplCache_EnableCamelCaseCompletion = 1
" アンダーバー補完を有効にする
let g:NeoComplCache_EnableUnderbarCompletion = 1
" シンタックスファイルの補完対象キーワードとする最小の長さ
let g:NeoComplCache_MinSyntaxLength = 3
" プラグイン毎の補完関数を呼び出す文字数
let g:NeoComplCache_PluginCompletionLength = {
  \ 'keyword_complete'  : 2,
  \ 'syntax_complete'   : 2
  \ }
" ファイルタイプ毎の辞書ファイルの場所
let g:NeoComplCache_DictionaryFileTypeLists = {
            \ 'default' : '',
            \ 'java' : $HOME.'/.vim/dict/j2se14.dict',
            \ 'javascript' : $HOME.'/.vim/dict/javascript.dict',
            \ 'php' : $HOME.'/.vim/dict/PHP.dict',
            \ }


"------------------------------------
" Open & Reload .vimrc
"------------------------------------
set foldmethod=expr
set modeline
command! Evimrc  e $MYVIMRC

augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

"------------------------------------
" Lokaltog/vim-easymotion
"------------------------------------
hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment

"------------------------------------
"vim: foldmethod=marker
