"------------------------------------------------------------
" vim��ư���.vimrc���Խ�/���ɤ߹���
"------------------------------------------------------------
 command! Ev edit $MYVIMRC     ".vimrc���Խ�
 command! Rv source $MYVIMRC   ".vimrc�κ��ɤ߹���

"------------------------------------------------------------
" ��������
"------------------------------------------------------------
 let mapleader = ","                       "�����ޥåץ꡼��
 set scrolloff=5                           "�����������;�����
 set textwidth=0                           "��Ԥ�Ĺ��ʸ�Ϥ�񤤤Ƥ⼫ư�ޤ��֤��򤷤ʤ�
"set noswapfile                            "����åץե�����(*.swp)��������ʤ�
 set directory=~/.vim/tmp                  "����åץե�����(*.swp)�ν�����
"set nobackup                              "�Хå����åץե�����(*~)��������ʤ�
 set backupdir=~/.vim/tmp                  "�Хå����åץե�����(*~)�ν�����
 set autoread                              "¾�ǽ񤭴������鼫ư���ɤ�ľ��
 set hidden                                "�Խ���Ǥ�¾�Υե�����򳫤���褦�ˤ���
 set backspace=indent,eol,start            "�Хå����ڡ����ǲ��Ǥ�ä���褦��
 set formatoptions=lmoq                    "�ƥ������������ץ���󡢥ޥ���Х��ȷϤ��ɲ�
 set vb t_vb=                              "�ӡ��פ��Ĥ餵�ʤ�
 set browsedir=buffer                      "Explore�ν���ǥ��쥯�ȥ�
"set whichwrap=b,s,h,l,<,>,[,]             "����������Ƭ�������ǻߤޤ�ʤ��褦�ˤ���
 set showcmd                               "���ޥ�ɤ򥹥ơ������Ԥ�ɽ��
 set showmode                              "���ߤΥ⡼�ɤ�ɽ��
 set viminfo='50,<1000,s100,\"50           "viminfo�ե�����(.viminfo)������
 set modelines=0                           "�⡼�ɥ饤���̵��
 set notitle                               "�����ȥ���ɽ��(vim��ȤäƤ���Ƥ��꤬�Ȥ��к�)
 set cursorline                            "��������Ԥζ�Ĵɽ��ON
"set corsorcolumun                         "����������ζ�Ĵɽ��ON
 set number                                "���ֹ��ɽ��
 set ruler                                 "����������֤�ɽ��
 set laststatus=2                          "��˥��ơ������饤���ɽ��
 set encoding=utf-8                        "ʸ��������
"set encoding=euc-jp                       "ʸ��������
 set fileencodings=euc-jp,sjis             "ʸ�������ɤ�ǧ��
 set iskeyword=@,48-57,_,192-255,,,-       "ñ��Ȥ���ǧ������ʸ��
 set isfname=@,48-57,/,.,-,_,+,,,#,$,%,~   "gf���ޥ�ɥ饤��ǥե�����Ȥ���ǧ������ʸ��
 set listchars=tab:>-,eol:$,trail:-        "�ԲĻ�ʸ��(set list/nolist��ɽ�����ڤ��ؤ�)

"OS�Υ���åץܡ���
"'vim --version'��'+clipboard'�Ǥ���л��Ѳ�ǽ
"set clipboard+=autoselect   "�ӥ��奢��⡼�ɤ����򤷤��ƥ����Ȥ򥯥�åץܡ��ɤ������
"set guioptions+=a           "�ӥ��奢��⡼�ɤ����򤷤��ƥ����Ȥ򥯥�åץܡ��ɤ������
"set clipboard=unnamed       "��󥯤����ƥ����Ȥ򥯥�åץܡ��ɤ������

"�ޥ�����������
 set mouse=                  "�ޥ������⡼��OFF
"set mouse=a                 "�ޥ������⡼��ON
"set ttymouse=xterm2         "�����ߥʥ������

"------------------------------------------------------------
" ���顼����
"------------------------------------------------------------
"colorscheme default         "���顼��������
"set background=light        "�طʿ��Υ�����
 set t_Co=256                "�����ߥʥ��ɽ����
 syntax enable               "���󥿥å����ϥ��饤��ON
 
"hi CursorLine cterm=none ctermbg=255                       "���������
"hi Serch ctermbg=220                                       "�������
"hi LineNr ctermfg=black ctermbg=252                        "���ֹ�
"hi Error cterm=underline ctermfg=red ctermbg=none          "���󥿥å������顼
"hi Visual ctermbg=250                                      "�ӥ��奢��⡼��
"hi Comment ctermfg=27                                      "������
"hi NonText cterm=bold ctermbg=213                          "����ʸ��
"hi SpecialKey cterm=bold ctermbg=213                       "����ʸ��

"���ơ������饤��
"hi StatusLine cterm=bold ctermfg=white ctermbg=12          "�����ƥ��֥�����ɥ�
"hi StatusLineNC cterm=none ctermfg=white ctermbg=darkgray  "�󥢥��ƥ��֥�����ɥ�

"����
"hi TabLineSel cterm=bold ctermfg=white ctermbg=12          "�����ƥ��֥���
"hi TabLine cterm=none ctermfg=white ctermbg=darkgray       "�󥢥��ƥ��֥���
"hi TabLineSel cterm=underline ctermfg=none ctermbg=none    "����ɽ���Ԥ�;��

"�ݥåץ��åץ�˥塼
"hi Pmenu ctermbg=253                                       "�䴰����
"hi PmenuSel ctermbg=250                                    "��������䴰����
"hi PmenuSbar ctermbg=253                                   "��������С�
"hi PmenuThumb ctermbg=245 cterm=none                       "���饤����

"��ʬ
"hi DiffAdd ctermfg=black ctermbg=lightblue                 "�ɲù�
"hi DiffChange ctermfg=black ctermbg=lightmagenta           "�ѹ���
"hi DiffDelete ctermfg=black ctermbg=lightcyan              "�����
"hi DiffText ctermfg=black ctermbg=red cterm=none           "�ѹ��ս�
 
"------------------------------------------------------------
" �䴰/����
"------------------------------------------------------------
 set wildmenu            "���ޥ���䴰�򶯲�
 set wildchar=<tab>      "���ޥ���䴰�򳫻Ϥ��륭��
 set wildmode=list:full  "�ꥹ��ɽ������Ĺ�ޥå�
 set history=1000        "���ޥ�ɡ������ѥ�����������
 set complete=.          "�䴰����򥫥��ȥХåե���ñ��Τߤ�����
 
"����򸡺� 
 cnoremap <C-p> <Up>
 cnoremap <C-n> <Down>
"�����ɽ��
 cnoremap <Up> <C-p>
 cnoremap <Down> <C-n>
 
"------------------------------------------------------------
" ����
"------------------------------------------------------------
 set wrapscan     "�Ǹ�ޤǸ�����������Ƭ�����
 set ignorecase   "��ʸ��/��ʸ������̤��ʤ��Ǹ���
 set smartcase    "����ʸ�������ʸ����ޤ������ʸ��/��ʸ������̤��Ƹ���
 set incsearch    "���󥯥��󥿥륵����
 set hlsearch     "����ʸ�����ϥ��饤��
 
"------------------------------------------------------------
" ����ǥ��
"------------------------------------------------------------
 set autoindent      "��ư����ǥ��ON
 set smartindent     "�������Ԥ򳫻Ϥ����Ȥ��˥���ǥ�Ȥ򸽺ߤιԤ�·����
 set cindent         "C���쥹������Υ���ǥ��ON
 set expandtab       "[Tab]���Ϥ�ʣ���ζ������Ϥ��֤�������(��¸��[Tab]ʸ���ˤϱƶ����ʤ�)
"set tabstop=4       "[Tab]ʸ������̾�β�ʸ��ʬ��Ÿ�����뤫�λ���(��¸��[Tab]ʸ���˱ƶ�)
 set shiftwidth=4    "��ư����ǥ�Ȥ�ʸ����
 set softtabstop=4   "�����ܡ��ɤ�[Tab]�����򲡤����Ȥ������������������
 
"------------------------------------------------------------
" ��ư���ޥ��
"------------------------------------------------------------
"�����ƥ��֥�����ɥ��˸¤ꥫ������Ԥ�Ĵ����
"augroup vimrc_set_cursorline_only_active_window
"    autocmd!
"    autocmd VimEnter,BufWinEnter,WinEnter * setlocal cursorline
"    autocmd WinLeave * setlocal nocursorline
"augroup END
"
"�����⡼�ɤ����ä��Ȥ��˥�������Ԥο����ѹ�����
"augroup vimrc_change_cursorline_color
"    autocmd!
"    autocmd InsertEnter * hi CursorLine cterm=none ctermbg=lightred
"    autocmd InsertLeave * hi CursorLine cterm=none ctermbg=255
"augroup END

"��ưŪ��QuickFix�ꥹ�Ȥ�ɽ������
 autocmd QuickfixCmdPost make,grep,grepadd,vimgrep,vimgrepadd cwin
 autocmd QuickfixCmdPost |make,|grep,|grepadd,|vimgrep,|vimgrepadd |cwin

"�ե����륿��������
 autocmd BufNewFile,BufRead *.com* set filetype=csh
 
"------------------------------------------------------------
" �ץ饰����
"------------------------------------------------------------
"�ץ饰���������ȿ�Ǥ��뤿��˥ե����륿���פ��öOFF
 if exists("g:did_load_filetypes")
     filetype off          "�ե����륿���׼�ư���Ф�OFF
     filetype plugin off   "�ե����륿�����̥ץ饰����Υ��ɤ�OFF
     filetype indent off   "�ե����륿�����̥���ǥ������Υ��ɤ�OFF
 endif

 set runtimepath+=~j-hori/.vim

"�ץ饰���������ȿ�Ǥ��뤿��˥ե����륿���������ON
 filetype on
 filetype plugin on
 filetype indent on
 
"------------------------------------------------------------
" ���������ư
"------------------------------------------------------------
"���������ɽ���Ԥǰ�ư���롣�����԰�ư��[C-n],[C-p]
 nnoremap h <Left>
 nnoremap j gj
 nnoremap k gk
 nnoremap l <Right>
 nnoremap <Down> gj
 nnoremap <Up> gk
 
"�����⡼�ɤΥ��������ư
 inoremap <C-h> <Left>
 inoremap <C-j> <Down>
 inoremap <C-k> <Up>
 inoremap <C-l> <Right>
 inoremap <C-a> <HOME>
 inoremap <C-e> <END>
 
"����λ������������Ԥ˰�ư
 autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

"�ե꡼������������
 set virtualedit+=block    "�ӥ��奢��������⡼�ɻ��Τ�
 
"����������ϻ��˥����������¦�ذ�ư
 inoremap {} {}<LEFT>
 inoremap [] []<LEFT>
 inoremap () ()<LEFT>
 inoremap "" ""<LEFT>
 inoremap '' ''<LEFT>
 inoremap <> <><LEFT>
 inoremap // //<LEFT>
 
"------------------------------------------------------------
" ������ɥ�/���ִ�Ϣ
"------------------------------------------------------------
"�ץ�ե�������������
 nnoremap [WinTab] <Nop>
 nmap s [WinTab]
 
"������ɥ���ʬ��
 nnoremap [WinTab]s :<C-u>split<CR>
 nnoremap [WinTab]v :<C-u>vsplit<CR>

"������ɥ�ʬ��β��
 nnoremap [WinTab]o <C-w>o
 nnoremap [WinTab]c <C-w>c

"ʬ�䤷��������ɥ��֤ΰ�ư
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

"ʬ�䤷��������ɥ����Τ�Τΰ�ư
 nnoremap [WinTab]J <C-w>J
 nnoremap [WinTab]K <C-w>K
 nnoremap [WinTab]L <C-w>L
 nnoremap [WinTab]H <C-w>H
 nnoremap [WinTab]<S-DOWN>  <C-w>J
 nnoremap [WinTab]<S-UP>    <C-w>K
 nnoremap [WinTab]<S-RIGHT> <C-w>L
 nnoremap [WinTab]<S-LEFT>  <C-w>H
 
"ʬ�䤷��������ɥ����礭�����ѹ�
 nnoremap [WinTab]0 <C-w>_<C-w>\|
 nnoremap [WinTab]= <C-w>=
 nnoremap [WinTab]. <C-w>>
 nnoremap [WinTab], <C-w><
 nnoremap [WinTab]; <C-w>+
 nnoremap [WinTab]- <C-w>-

 map <kPlus>  <C-w>+
 map <kMinus> <C-w>-

"���֤��ɲ�
 nnoremap [WinTab]t :<C-u>tabnew<CR>
"���֤ΰ�ư
 nnoremap [WinTab]n :<C-u>tabnext<CR>
 nnoremap [WinTab]p :<C-u>tabprevious<CR>
 
"------------------------------------------------------------
" �������벼��ñ����Ф������
"------------------------------------------------------------
"�ץ�ե�������������
 nnoremap [Space] <Nop>
 nmap <Space> [Space]

"�������벼�Υ�����ɤ�إ�פǤҤ�
 nnoremap [Space]i :<C-u>help <C-r><C-w><CR>
"�������벼��ñ���vimgrep����
 nnoremap [Space]g :<C-u>vimgrep /<C-r><C-w>/j % \|cw
"�������벼�Υե�����򳫤�(Ʊ��������ɥ���)
 nnoremap [Space]e gf
"�������벼�Υե�����򳫤�(�������֤�)
 nnoremap [Space]n <C-w>gf

"�������벼�Υե������¸�ߤ�����å�
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
" �ȥ���
"------------------------------------------------------------
"�ץ�ե�������������
 nnoremap [Toggle] <Nop>
 nmap <Space>t [Toggle]

"���ֹ�ɽ���Υȥ���
 nnoremap [Toggle]n :<C-u>set number!<CR>
"�ԲĻ�ʸ��ɽ���Υȥ���
 nnoremap [Toggle]l :<C-u>set list!<CR>
"����������ʸ��/��ʸ�����̤Υȥ���
 nnoremap [Toggle]i :<C-u>set ignorecase!<CR>
"�Ԥ��ޤ��֤�ɽ���Υȥ���
 nnoremap [Toggle]w :<C-u>set wrap!<CR>
 
"�ڡ����ȥ⡼�ɤΥȥ���(�����⡼��)
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

