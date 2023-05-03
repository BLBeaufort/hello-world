# script: Ops Challenge: Class 05
# Author:  Barbara L. Beaufort
# Date of latest revision: 5/1/2023
$ Purpose:  Create a loop for running PIDs

#!/bin/bash

y="x"

while [ $y == "13256" ]
do
    ps aux
    echo "Choose a PID."
    read pid
    kill $pid
    break
done

    echo "Done."
