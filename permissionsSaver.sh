# Rawan Alsaadi 10081442
# Omar Toutounji 10169506
# Beltan Michel 10169162
#!/bin/bash

originalFile="savedPermissions"
nextFileName=$originalFile

j=1

while [ -f "$nextFileName" ]; do
 nextFileName=$originalFile$j
 j=$(($j + 1))
done

stat -c "%A %n" * >$nextFileName

echo "$fName created!"
