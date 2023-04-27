#!/bin/bash
function loginhist() {
    last > history.txt
}
loginhist
echo "This is the login history"
#end