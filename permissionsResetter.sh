# Rawan Alsaadi 10081442
# Omar Toutounji 10169506
# Beltan Micehl 10169162

#!/bin/bash
mode=$1
fName=$2
readarray -t permissionsArray < $fName

if [ "$mode" == "-s" ]; then
	printf "%20s %20s %20s\n" "Old         Current      File";
fi

for line in "${permissionsArray[@]}"; do
   savedPermission=${line%% *}
   file=${line#*}

   currentPermission="$(stat -c "%A" $file)"
   if [ "$currentPermission" != "$savedPermission" ]; then
     if [ "$mode" == "-s" ]; then
       printf "%20s %20s %20s\n" "$savedPermission $currentPermission $file"
     elif [ "$mode" == "-r" ]; then
       echo "$file Reset from $currentPermission to $savedPermission"

          chmod a-rwx $file
       chmod u+${savedPermission:1:3},g+${savedPermission:4:3},o+${savedPermission:7:3} $file
      fi
    fi
done
