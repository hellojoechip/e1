get_words()
{

	w=$(echo $((2 + $RANDOM % 7)))
	cat words2 | sort -R | head -$w | tr "\n" " "

}

get_flag()
{

	cat flags.txt | sort -R | head -1

}

for x in $(seq 25)
do
	echo $x
	l=""
	r=$(echo $((10 + $RANDOM % 20)))
	for y in $(seq $r)
	do
		l=${l}$(get_words)
		l=${l}$(get_flag)
	done

	echo $l | tr "\n" " " > $x.html
done
