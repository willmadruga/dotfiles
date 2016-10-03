""""""""""""""""""""""""""""""                                                                                                       
" PATHOGEN - PLUGIN  MANAGER "                                                                                                       
""""""""""""""""""""""""""""""                                                                                                       

execute pathogen#infect()                                                                                                            

""""""""""""""""""""""""""""""                                                                                                       

"""""""""""""""                                                                                                                      
" MISC CONFIG "                                                                                                                      
"""""""""""""""                                                                                                                      

syntax on                               " syntax highlighting enabled                                                                
syntax enable                           " syntax highlighting enabled                                                                
filetype indent on                      " enables indentation based on filetype                                                      
filetype plugin on                      " enables plugin based on filetype                                                           
set listchars=tab:▸\ ,eol:¬             " changes invisible characters identification                                                
let mapleader=","                       " remaps leader from backslash to comma                                                      
set nowrap                              " don't wrap lines                                                                           
set tabstop=2                           " a tab is two spaces                                                                        
set backspace=indent,eol,start          " allow backspacing over everything in insert mode                                           
set autoindent                          " always set autoindenting on                                                                
set copyindent                          " copy the previous indentation on autoindenting                                             
set number                              " always show line numbers                                                                   
set shiftwidth=2                        " number of spaces to use for autoindenting                                                  
set shiftround                          " use multiple of shiftwidth when indenting with '<' and '>'                                 
set showmatch                           " set show matching parenthesis                                                              
set ignorecase                          " ignore case when searching                                                                 
set smartcase                           " ignore case if search pattern is all lowercase, case-sensitive otherwise                   
set smarttab                            " insert tabs on the start of a line according to shiftwidth, not tabstop                    
set hlsearch                            " highlight search terms                                                                     
set incsearch                           " show search matches as you type                                                            
set history=1000                        " remember more commands and search history                                                  
set undolevels=1000                     " use many levels of undo                                                                    
set wildignore=*.swp,*.bak,*.class      " ignore these files                                                                         
set title                               " change the terminal's title                                                                
set visualbell                          " don't beep, thanks!                                                                        
set noerrorbells                        " don't beep, thanks!                                                                        
set nobackup                            " no backup file                                                                             
"set noswapfile                         " no swap file                                                                               
set pastetoggle=<F2>                    " switches to 'paste mode' to disable auto-indenting and other things when you paste content 
                                        " You can use <C-r>+ to paste right from the OS paste board                                  
set spelllang=en_ca                     " spell check - Canadian English                                                             
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""                                                                                                                   
" COLOR SETTINGS "                                                                                                                   
""""""""""""""""""                                                                                                                   
  colorscheme solarized                                                                                                              
  let g:solarized_termcolors=256                                                                                                     
  if has('gui_running')                                                                                                              
    set background=light                                                                                                             
  else                                                                                                                               
    set background=dark                                                                                                              
  endif                                                                                                                              

"Invisible character colors                                                                                                          
  highlight NonText guifg=#4a4a59                                                                                                    
  highlight SpecialKey guifg=#4a4a59                                                                                                 


"Invisible character colors                                                                                                          
  highlight NonText guifg=#4a4a59                                                                                                    
  highlight SpecialKey guifg=#4a4a59                                                                                                 

""""""""""""""""""""""""""""""""""                                                                                                   

""""""""""""""""""                                                                                                                   
" PLUGINS CONFIG "                                                                                                                   
""""""""""""""""""                                                                                                                   
" Ignoring compiled java classes                                                                                                     
set wildignore+=*/build/**                                                                                                           

""""""""""""""""""""""""""""""""""                                                                                                   


"""""""""""""""""""                                                                                                                  
" RE-MAPPING KEYS "                                                                                                                  
"""""""""""""""""""                                                                                                                  
" Ctrl+n to open NERDTree                                                                                                            
nmap <C-N> :NERDTreeToggle<CR>                                                                                                       


" Ctrl+d to use "dd" in the insert mode. It will actually get out of insert                                                          
" mode with <esc> then run "dd" then go back to insert mode with "i" again.                                                          
imap <C-D> <esc>ddi                                                                                                                  


" Goto Buffer                                                                                                                        
nnoremap gb :ls<CR>:b<Space>                                                                                                         


" ctrl+p funky to use ctrl+p for functions/methods                                                                                   
nnoremap <Leader>fu :CtrlPFunky<Cr>                                                                                                  
" narrow the list down with a word under cursor                                                                                      
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>                                                                   



" Autocomplete - insert mode                                                                                                         
"noremap <C-Space> <C-N><C-P>                                                                                                        



" Show invisible characters (tabs and EOF)                                                                                           
nmap <leader>l :set list!<CR>                                                                                                        


" [:] to [;]                                                                                                                         
nnoremap ; :                                                                                                                         


" Turn spell-check On/Off for english.                                                                                               
nnoremap <leader>s :set spell!<CR>
