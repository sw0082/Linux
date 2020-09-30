#!/bin/sh

row=1
col=1

if [ $1 -lt 1 -a $1 -gt 9 ]
then
    echo "Rows must be at least 1 and less than or equal to 9"
    exit 0
fi

if [ $2 -lt 1 -a $2 -gt 9 ]
then
    echo "Cols must be at least 1 and less than or equal to 9"
    exit 0
fi
    
    
while [ $row -le $1 ]
do
    while [ $col -le $2 ]
    do
        echo -n $row"*"$col"="`expr $row \* $col`" "
        col=`expr $col + 1`
    done
    row=`expr $row + 1`
    col=1
    echo ""
done

exit 0
