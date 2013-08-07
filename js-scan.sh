#!/bin/bash
FOLDER=$1
if [ -z "$FOLDER" ]; then
	FOLDER=.
fi



echo "##### 1. Use of eval() #####"
grep -rF "eval(" $FOLDER

echo "##### 2. Use of new Function(string) #####"
grep -r "new Function(\"" $FOLDER

echo "##### 3. Use of setTimeout(string) #####"
grep -r "setTimeout(\"" $FOLDER

echo "##### 4. Use of setInterval(string) #####"
grep -r "setInterval(\"" $FOLDER

echo "##### 5. Use of unsafe jQuery methods #####"
grep -Er "\.(after|append|appendTo|before|html|insertAfter|insertBefore|prepend|prependTo|replaceAll|replaceWith|unwrap|wrap|wrapAll|wrapInner)\(" $FOLDER

echo "##### 6. HTML string concat ######"
grep -Er "\"<[a-z]+.*\"[ 	]+\+" $FOLDER

