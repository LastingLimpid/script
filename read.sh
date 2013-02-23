find . -type f -print0 | while read -d $'\0' file; do echo $file; done

