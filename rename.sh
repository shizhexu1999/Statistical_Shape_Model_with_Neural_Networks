# easy script for renaming ply files to be consistent
# with how my code opens the files in batch

COUNTER=1
for file in *; do
    if [[ $file == *.ply ]]
    then
        echo ${COUNTER}
        mv $file "surf${COUNTER}.ply"
        let COUNTER=COUNTER+1
    fi
done
