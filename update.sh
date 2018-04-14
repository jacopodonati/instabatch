#!/bin/bash

sort accounts > tmp
cat tmp > accounts
rm tmp

while read account; do
	if [ ! -d $account ]
	then
		mkdir $account
	fi
	instalooter user $account ./$account -v -N -T {datetime}
done < accounts
