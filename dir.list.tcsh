#!/usr/bin/env tcsh

#Test arguments
if ($#argv != 1) then
  printf "%s\n" "$0 usage: $0 directoryname"
  exit 1
endif

#Ensure argument is a directory
set dir="$1"
set c=0
# make sure $dir exits
if ( -d ${dir} ) then
    set c="`ls -a ${dir} | wc | awk '{print $1}'`"
   # IS dir is empty
    if ( ${c} == 2 ) then
                printf "%s\n" "Empty directory - "${dir}
    else        #dir has files
                printf "%s\n" "List file names for directory '${dir}':"
                ls ${dir}
    endif
else
      printf "%s\n" "'${dir}' is not a directory"
endif
# dir.list.tcsh EOF
