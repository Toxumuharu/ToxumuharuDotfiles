#!/bin/bash

string="Microsoft"

if test $(uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p') = $string
then
echo "aaaa"
fi 


#case "uname -r" in
#	*Microsoft*)
#	cat uname -r
#	uname -r | sed -n 's/.*\(Microsoft *\).*/\1/p'
#	;;
#esac
 
