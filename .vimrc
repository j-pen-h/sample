"------------------------------------------------------------
" vim起動中に.vimrcを編集/再読み込み
"------------------------------------------------------------
 command! Ev edit $MYVIMRC     ".vimrcの編集
 command! Rv source $MYVIMRC   ".vimrcの再読み込み

"------------------------------------------------------------
" 基本設定
"------------------------------------------------------------
 let mapleader = ","                       "キーマップリーダ
 set scrolloff=5                           "スクロール時の余白確保
 set textwidth=0                           "一行に長い文章を書いても自動折り返しをしない
"set noswapfile                            "スワップファイル(*.swp)を作成しない
 set directory=~/.vim/tmp                  "スワップファイル(*.swp)の出力先
"set nobackup                              "バックアップファイル(*~)を作成しない
 set backupdir=~/.vim/tmp                  "バックアップファイル(*~)の出力先
 set autoread                              "他で書き換えたら自動で読み直す
 set hidden                                "編集中でも他のファイルを開けるようにする
 set backspace=indent,eol,start            "バックスペースで何でも消せるように
 set formatoptions=lmoq                    "テキスト整形オプション、マルチバイト系を追加
 set vb t_vb=                              "ビープを鳴らさない
 set browsedir=buffer                      "Exploreの初期ディレクトリ
"set whichwrap=b,s,h,l,<,>,[,]             "カーソルを行頭、行末で止まらないようにする
 set showcmd                               "コマンドをステータス行に表示
 set showmode                              "現在のモードを表示
 set viminfo='50,<1000,s100,\"50           "viminfoファイル(.viminfo)の設定
 set modelines=0                           "モードラインは無効
 set notitle                               "タイトル非表示(vimを使ってくれてありがとう対策)
 set cursorline                            "カーソル行の強調表示ON
"set corsorcolumun                         "カーソル列の強調表示ON
 set number                                "行番号を表示
 set ruler                                 "カーソル位置を表示
 set laststatus=2                          "常にステータスラインを表示
 set encoding=utf-8                        "文字コード
"set encoding=euc-jp                       "文字コード
 set fileencodings=euc-jp,sjis             "文字コードの認識
 set iskeyword=@,48-57,_,192-255,,,-       "単語として認識する文字
 set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~   "gfコマンドラインでファイルとして認識する文字
 set listchars=tab:>-,eol:$,trail:-        "不可視文字(set list/nolistで表示を切り替え)

"OSのクリップボード
"'vim --version'で'+clipboard'であれば使用可能
"set clipboard+=autoselect   "ビジュアルモードで選択したテキストをクリップボードに入れる
"set guioptions+=a           "ビジュアルモードで選択したテキストをクリップボードに入れる
"set clipboard=unnamed       "ヤンクしたテキストをクリップボードに入れる

"マウス操作の設定
 set mouse=                  "マウス操作モードOFF
"set mouse=a                 "マウス操作モードON
"set ttymouse=xterm2         "ターミナルの設定

"------------------------------------------------------------
" カラー設定
"------------------------------------------------------------
"colorscheme default         "カラースキーマ
"set background=light        "背景色のタイプ
 set t_Co=256                "ターミナルの表示色
 syntax enable               "シンタックスハイライトON
 
"hi CursorLine cterm=none ctermbg=255                       "カーソル行
"hi Serch ctermbg=220                                       "検索結果
"hi LineNr ctermfg=black ctermbg=252                        "行番号
"hi Error cterm=underline ctermfg=red ctermbg=none          "シンタックスエラー
"hi Visual ctermbg=250                                      "ビジュアルモード
"hi Comment ctermfg=27                                      "コメント
"hi NonText cterm=bold ctermbg=213                          "改行文字
"hi SpecialKey cterm=bold ctermbg=213                       "タブ文字

"ステータスライン
"hi StatusLine cterm=bold ctermfg=white ctermbg=12          "アクティブウィンドウ
"hi StatusLineNC cterm=none ctermfg=white ctermbg=darkgray  "非アクティブウィンドウ

"タブ
"hi TabLineSel cterm=bold ctermfg=white ctermbg=12          "アクティブタブ
"hi TabLine cterm=none ctermfg=white ctermbg=darkgray       "非アクティブタブ
"hi TabLineSel cterm=underline ctermfg=none ctermbg=none    "タブ表示行の余白

"ポップアップメニュー
"hi Pmenu ctermbg=253                                       "補完候補
"hi PmenuSel ctermbg=250                                    "選択中の補完候補
"hi PmenuSbar ctermbg=253                                   "スクロールバー
"hi PmenuThumb ctermbg=245 cterm=none                       "スライダー

"差分
"hi DiffAdd ctermfg=black ctermbg=lightblue                 "追加行
"hi DiffChange ctermfg=black ctermbg=lightmagenta           "変更行
"hi DiffDelete ctermfg=black ctermbg=lightcyan              "削除行
"hi DiffText ctermfg=black ctermbg=red cterm=none           "変更箇所
 
"------------------------------------------------------------
" 補完/履歴
"------------------------------------------------------------
 set wildmenu            "コマンド補完を強化
 set wildchar=<tab>      "コマンド補完を開始するキー
 set wildmode=list:full  "リスト表示、最長マッチ
 set history=1000        "コマンド・検索パターンの履歴数
 set complete=.          "補完候補をカレントバッファの単語のみに設定
 
"履歴を検索 
 cnoremap <C-p> <Up>
 cnoremap <C-n> <Down>
"履歴を表示
 cnoremap <Up> <C-p>
 cnoremap <Down> <C-n>
 
"------------------------------------------------------------
" 検索
"------------------------------------------------------------
 set wrapscan     "最後まで検索したら先頭へ戻る
 set ignorecase   "大文字/小文字を区別しないで検索
 set smartcase    "検索文字列に大文字を含む場合は大文字/小文字を区別して検索
 set incsearch    "インクリメンタルサーチ
 set hlsearch     "検索文字列をハイライト
 
"------------------------------------------------------------
" インデント
"------------------------------------------------------------
 set autoindent      "自動インデントON
 set smartindent     "新しい行を開始したときにインデントを現在の行と揃える
 set cindent         "C言語スタイルのインデントON
 set expandtab       "[Tab]入力を複数の空白入力に置き換える(既存の[Tab]文字には影響しない)
"set tabstop=4       "[Tab]文字を画面上の何文字分に展開するかの指定(既存の[Tab]文字に影響)
 set shiftwidth=4    "自動インデントの文字数
 set softtabstop=4   "キーボードで[Tab]キーを押したときに挿入される空白の量
 
"------------------------------------------------------------
" 自動コマンド
"------------------------------------------------------------
"アクティブウィンドウに限りカーソル行を強調する
"augroup vimrc_set_cursorline_only_active_window
"    autocmd!
"    autocmd VimEnter,BufWinEnter,WinEnter * setlocal cursorline
"    autocmd WinLeave * setlocal nocursorline
"augroup END
"
"挿入モードに入ったときにカーソル行の色を変更する
"augroup vimrc_change_cursorline_color
"    autocmd!
"    autocmd InsertEnter * hi CursorLine cterm=none ctermbg=lightred
"    autocmd InsertLeave * hi CursorLine cterm=none ctermbg=255
"augroup END

"自動的にQuickFixリストを表示する
 autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
 autocmd QuickfixCmdPost |make,|grep,|grepadd,|vimgrep,|vimgrepadd |cwin

"ファイルタイプ設定
 autocmd BufNewFile,BufRead *.com* set filetype=csh
 
"------------------------------------------------------------
" プラグイン
"------------------------------------------------------------
"プラグイン設定を反映するためにファイルタイプを一旦OFF
 if exists("g:did_load_filetypes")
     filetype off          "ファイルタイプ自動検出をOFF
     filetype plugin off   "ファイルタイプ別プラグインのロードをOFF
     filetype indent off   "ファイルタイプ別インデント設定のロードをOFF
 endif

 set runtimepath+=~j-hori/.vim

"プラグイン設定を反映するためにファイルタイプ設定をON
 filetype on
 filetype plugin on
 filetype indent on
 
"------------------------------------------------------------
" カーソル移動
"------------------------------------------------------------
"カーソルを表示行で移動する。論理行移動は[C-n],[C-p]
 nnoremap h <Left>
 nnoremap j gj
 nnoremap k gk
 nnoremap l <Right>
 nnoremap <Down> gj
 nnoremap <Up> gk
 
"挿入モードのカーソル移動
 inoremap <C-h> <Left>
 inoremap <C-j> <Down>
 inoremap <C-k> <Up>
 inoremap <C-l> <Right>
 inoremap <C-a> <HOME>
 inoremap <C-e> <END>
 
"前回終了したカーソル行に移動
 autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"フリーカーソル設定
 set virtualedit+=block    "ビジュアル矩形選択モード時のみ
 
"括弧等の入力時にカーソルを内側へ移動
 inoremap {} {}<LEFT>
 inoremap [] []<LEFT>
 inoremap () ()<LEFT>
 inoremap "" ""<LEFT>
 inoremap '' ''<LEFT>
 inoremap <> <><LEFT>
 inoremap // //<LEFT>
 
"------------------------------------------------------------
" ウィンドウ/タブ関連
"------------------------------------------------------------
"プレフィクスキー設定
 nnoremap [WinTab] <Nop>
 nmap s [WinTab]
 
"ウィンドウの分割
 nnoremap [WinTab]s :<C-u>split<CR>
 nnoremap [WinTab]v :<C-u>vsplit<CR>

"ウィンドウ分割の解除
 nnoremap [WinTab]o <C-w>o
 nnoremap [WinTab]c <C-w>c

"分割したウィンドウ間の移動
 nnoremap [WinTab]r <C-w>r
 nnoremap [WinTab]w <C-w>w
 nnoremap [WinTab]j <C-w>j
 nnoremap [WinTab]k <C-w>k
 nnoremap [WinTab]l <C-w>l
 nnoremap [WinTab]h <C-w>h
 nnoremap [WinTab]<DOWN>  <C-w>j
 nnoremap [WinTab]<UP>    <C-w>k
 nnoremap [WinTab]<RIGHT> <C-w>l
 nnoremap [WinTab]<LEFT>  <C-w>h

"分割したウィンドウそのものの移動
 nnoremap [WinTab]J <C-w>J
 nnoremap [WinTab]K <C-w>K
 nnoremap [WinTab]L <C-w>L
 nnoremap [WinTab]H <C-w>H
 nnoremap [WinTab]<S-DOWN>  <C-w>J
 nnoremap [WinTab]<S-UP>    <C-w>K
 nnoremap [WinTab]<S-RIGHT> <C-w>L
 nnoremap [WinTab]<S-LEFT>  <C-w>H
 
"分割したウィンドウの大きさを変更
 nnoremap [WinTab]0 <C-w>_<C-w>\|
 nnoremap [WinTab]= <C-w>=
 nnoremap [WinTab]. <C-w>>
 nnoremap [WinTab], <C-w><
 nnoremap [WinTab]; <C-w>+
 nnoremap [WinTab]- <C-w>-

 map <kPlus>  <C-w>+
 map <kMinus> <C-w>-

"タブの追加
 nnoremap [WinTab]t :<C-u>tabnew<CR>
"タブの移動
 nnoremap [WinTab]n :<C-u>tabnext<CR>
 nnoremap [WinTab]p :<C-u>tabprevious<CR>
 
"------------------------------------------------------------
" カーソル下の単語に対する操作
"------------------------------------------------------------
"プレフィクスキー設定
 nnoremap [Space] <Nop>
 nmap <Space> [Space]

"カーソル下のキーワードをヘルプでひく
 nnoremap [Space]i :<C-u>help <C-r><C-w><CR>
"カーソル下の単語をvimgrepする
 nnoremap [Space]g :<C-u>vimgrep /<C-r><C-w>/j % \|cw
"カーソル下のファイルを開く(同じウィンドウで)
 nnoremap [Space]e gf
"カーソル下のファイルを開く(新規タブで)
 nnoremap [Space]n <C-w>gf

"カーソル下のファイルの存在をチェック
 function! g:check(str)
     let chk= getftype(a:str)
     if chk != ""
         echohl MoreMsg
         echo "### FOUND ### : "a:str
         echohl None
     else
         echohl ErrorMsg
         echo "### NOT FOUND ### : "a:str
         echohl None
     endif
 endfunction
 nnoremap [Space]j BvEy :call g:check("<C-r>"")<CR>

"------------------------------------------------------------
" トグル
"------------------------------------------------------------
"プレフィクスキー設定
 nnoremap [Toggle] <Nop>
 nmap <Space>t [Toggle]

"行番号表示のトグル
 nnoremap [Toggle]n :<C-u>set number!<CR>
"不可視文字表示のトグル
 nnoremap [Toggle]l :<C-u>set list!<CR>
"検索時の大文字/小文字区別のトグル
 nnoremap [Toggle]i :<C-u>set ignorecase!<CR>
"行の折り返し表示のトグル
 nnoremap [Toggle]w :<C-u>set wrap!<CR>
 
"ペーストモードのトグル(挿入モード)
 set pastetoggle=<F9>


"ADD
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')
"call dein#add('Shougo/neocomplete.vim')
call dein#add('Shougo/neomru.vim')
"call dein#add('Shougo/neosnippet')
call dein#add('Shougo/unite.vim')
call dein#add('w0ng/vim-hybrid')
call dein#add('itchyny/lightline.vim')
call dein#add('scrooloose/nerdtree')

call dein#end()
if dein#check_install()
    call dein#install()
endif

":call dein#install()   "install
":Unite dein   "check plugin

filetype plugin indent on
set t_Co=256
syntax on
set background=dark
colorscheme hybrid
let g:lightline = { 'colorscheme': 'wombat', }
set laststatus=2
set cursorline
set number

