#!/bin/bash
for i in {1..5}; do
	zaw="#!/bin/bash"
	zaw+="echo \"Witaj w skrypcie nr $i\""
	
	echo -e "$zaw">skrypt${i}.sh
done

