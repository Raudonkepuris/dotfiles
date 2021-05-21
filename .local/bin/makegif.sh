echo $1 $2 $3

mkdir $2

i=0 

f=0

let "angle = $3"

while [ $i -lt 360 ]
do
	convert $1 -background none -resize 400x400 -rotate $i -gravity center -extent 400x400 $2/frame-$f.png
	i=$((angle + i))
	((f++))
done

convert -delay 20 -loop 0 -dispose previous $2/*.png $2/mygif.gif
