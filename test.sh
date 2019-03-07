 #!/bin/bash
foldername=$1
echo $foldername
exe=$2
currentloc=`pwd`
echo $currentloc
cd "$foldername"
make
secssesfullmake=$?
if [[ "$secssesfullmake" -gt 0]] ; then
exit 7
fi

valgraind./executeble $@
valgraind=$?
valgraind --tool-helpgrind./exe

