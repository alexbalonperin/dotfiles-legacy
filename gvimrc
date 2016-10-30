
"
" GUI options
"
set antialias                                   " Mac OS X: use smooth, antialiased fonts
set background=dark                             " 'dark' or 'light', used for highlight colors
set columns=180                                 " number of columns in the display
set grepformat=%f:%l:%m                         " ack-friendly options for :grep
set grepprg=ack                                 " if we're running in a GUI assume that ack is installed
set guifont=Menlo:h12,DejaVu\ Sans\ Mono:h12    " try first Menlo 12pt, then DejaVu Sans Mono 12pt
set guiheadroom=0                               " GUI: pixels room for window decorations
set guioptions-=T                               " hide the toolbar
set guioptions-=r guioptions-=L                 " disable the default scrollbars
set guitablabel=%t                              " GUI: custom label for a tab page (show file name of the file in the buffer)
set guitabtooltip=%F                            " GUI: custom tooltip for a tab page (show full path of the file in the buffer)
set lines=999                                   " number of lines in the display


"
" MacVim stuff. Maybe also works with gvim.
"

macm Window.Select\ Next\ Tab       key=<D-S-Right>
macm Window.Select\ Previous\ Tab   key=<D-S-Left>

" Map the tabs to Cmd-1..Cmd-9, web browser style
for i in range(1, 8)
  execute 'nnoremap <silent> <D-'. i . '> :tabnext ' . i . '<CR>'
endfor
nnoremap <silent> <D-9> :tablast<CR>

