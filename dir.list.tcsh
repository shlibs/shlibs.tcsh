#!/usr/bin/env /usr/bin/tcsh
#!/usr/bin/env -vS /usr/bin/tcsh
# references:
# http://merlot.usc.edu/cs353-s21/tcsh.html
#Test arguments
if ($#argv != 1) then
printf "%s\n" "'$0' usage: $0 directoryname"
exit 1
endif
# mkdir testdir
# touch testdir/empty.{e..t}.file
#Ensure argument is a directory
set dir="$1"
set c=0
# make sure $dir exits
if ( -d "$dir" ) then
set c="`ls -a "$dir" | wc -l`"
# IS dir is empty
if ( "$c" == 2 ) then
printf "%s\n" "'$dir' is empty."
else        #dir has files
printf "%s\n" "List file names for '$dir':"
ls "$dir"
endif
else
printf "%s\n" "'$dir' is not a directory."
endif
# shlibs/shlibs.tcsh/dir.list.tcsh EOF
