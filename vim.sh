#!/bin/sh
#find . -name "*.h" -o -name "*.c" -o -name "*.s" > cscope.files
find $1 -name "*.h" -o -name "*.c" -o -name "*.s" -o -name "*.cpp" -o -name "*.inl" -o -name "*.java" -o -name ".py" > cscope.files

cscope -bkq -i cscope.files
~/.vim/bin/ctags -R  --c++-kinds=+p --fields=+iaS --extra=+q  $1
#ctags -R $1
