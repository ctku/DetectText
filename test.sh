for name in /home/ctku/data/ArabicSigns-1.0/data/*.jpg
do
    len=$(expr length $name)
    fn=$(expr substr $name 38 $(expr $len - 4))
    out="/home/ctku/data/ArabicSigns-1.0/data/out/$fn.png"
    ./DetectText $name $out 0
    ./DetectText $name $out 1
done
