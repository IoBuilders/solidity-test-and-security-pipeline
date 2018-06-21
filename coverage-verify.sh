# !/bin/bash

set -e 

LIMITE=$1

./node_modules/.bin/solidity-coverage > coverage.log ; echo $? > result.log

if [[ "$(cat result.log)" == "0" ]]; then 
    cat coverage.log | gawk -v limite="$LIMITE" -F"|" '$1~/All files +/ { 
        if ( ($2*1)<limite ) { 
            system("echo 1 > result.log");
        } 
    }'
fi

cat coverage.log | gawk -F"|" '$1~/All files +/ { 
    $2 = gensub(/^[ \t]*|[ \t]*$/,"","g",$2);  
    print "coverage: "$2"%";
}'

exit $(cat result.log)

set +e