#!/bin/bash
nums=$(echo {0..9})
states=('Colorado' 'New York' 'Florida' 'Indiana' 'Illinois')
listout=$(ls)
suids=$(find / -type f -perm /4000 2> /dev/null)
for num in ${nums[@]};
	do
		if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
			then
				echo $num
		fi
	done
for state in "${states[@]}";
	do
		if [ "$state" == "New York" ]
			then
				echo "New York is the best!"
			else
				echo "I'm not fond of New York."
			fi
	done
for item in ${listout[@]};
	do
		echo $item
	done

for suid in ${suids[@]};
	do
		echo $suid
	done
