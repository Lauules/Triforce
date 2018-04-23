function display_space {
  c=0
  while [ "$c" -ne "$1" ]; do
	    echo -n " "
	    let "c+=1"
	done
}

function display_star {
  b=0
	while [ "$b" -ne "$1" ]; do
	    echo -n "*"
	    let "b+=1"
	done
}

function display()
{
a=0
max=1
space=$2
moi=$((space-1))
tie=$((moi/2))

while [ "$a" -ne "$1" ]; do
  display_space $space
  display_star $max
  let "a+=1"
	let "max+=2"
	echo -e ""
  let "space=space-1"
done

a=0
max=1
space=$2
max_2=1

while [ "$a" -ne "$1" ]; do
  display_space $tie
	display_star $max
	display_space $space
	display_star $max_2

  echo -e ""
  let "max+=2"
  let "max_2+=2"
  let "a+=1"
  let "tie=tie-1"
  let "space=space-2"
  done
}

function taille_max()
{
a=0
max=1
    while [ "$a" -ne "$1" ]; do
        length=0
        b=0
        while [ "$b" -ne "$max" ]; do
            let "b+=1"
            let "length+=1"
        done
        let "a+=1"
        let "max+=2"
    done
	display $1 $length
}

if [[ "$1" =~ ^[0-9]+$ ]]
then
	taille_max $1
else
    echo "Entrer un numéro"
fi
