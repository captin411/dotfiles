au BufNewFile,BufRead *.t setf perl 
au BufNewFile,BufRead *.mpl setf perl 
au BufNewFile,BufRead *.applescript setf applescript

au BufNewFile,BufRead *.tpl         call FTCheck_ttdwt()
au BufNewFile,BufRead *.tt          call FTCheck_ttdwt()
au BufNewFile,BufRead *.tt2         call FTCheck_ttdwt()
au BufNewFile,BufRead *.tmpl        call FTCheck_ttdwt()
au BufNewFile,BufRead *.mt          call FTCheck_ttdwt()

fun! FTCheck_ttdwt()
  let n = 1
  while n < 100 && n < line("$")
    if getline(n) =~ "\<!-- InstanceBegin template="
      setf dwt
      return
    endif
    let n = n + 1
  endwhile
  setf tt2html
endfun

