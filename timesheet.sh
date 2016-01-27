#!/bin/bash
zero ()
{
k=${1:?"Number to print missing"}
j=${2:?"Number of digits missing"}
fin=1
h=1
dig=0
while [ $fin -eq 1 ]; do
  if [ $k -lt $((10**$h)) ]; then
    fin=2
    dig=$h
  else
    h=$(($h+1))
  fi
done
zero=$(($j-$dig))
zeros=''
for (( i=1 ; i<=$zero ; i++ )); do
  zeros=$zeros'0'
done
num=$zeros$k
echo $num
}
strt=$(date)
inisecs=$(date +%s)
acum=0
echo
echo "Time started at $strt"
echo
echo "Time elapsed: (press q to quit, p to pause)"
while true; do
act=$(date +%s)
dif=$(( $act - $inisecs + $acum))
hs=$(( $dif / 3600 ))
ms=$(( $dif / 60 - $hs * 60 ))
ss=$(( $dif - $ms * 60 - $hs * 3600 ))
HH=$(zero $hs 2)
MM=$(zero $ms 2)
SS=$(zero $ss 2)
echo -en "\b\b\b\b\b\b\b\b\b\b\b $HH:$MM:$SS "
read -t 1 -n 1 key
if [[ "$key" = "q" ]]; then
    break
elif [[ "$key" = "p" ]]; then
   echo -e "\nPaused. Press ENTER to continue"
   read a
   acum=$dif
   inisecs=$(date +%s)
fi
done
echo -e "\n\nClient(enter c) or Training/other(enter t)"
read text
if [[ "$text" = "t" ]]; then
    echo -e "\n\nJob Description:"
    read text
    echo
    echo "$strt, $dif, $HH:$MM:$SS, $text"
    echo "$strt, $dif, $HH:$MM:$SS, $text" >> timesheet.csv
    echo
    echo "Saved timesheet.csv"
else
    echo -e "\n\nJob Description:"
    read text1
    echo -e "\n\nDepartment:"
    read text2
    echo -e "\n\nClient Name:"
    read text3
    echo -e "\n\nClient Role:"
    read text4
    echo -e "\n\nSolution/approach:"
    read text5
    echo -e "\n\nComplaints:"
    read text6
    echo
    echo "$strt, $dif, $HH:$MM:$SS, $text1, $text2, $text3, $text4, $text5, $text6"
    echo "$strt, $dif, $HH:$MM:$SS, $text1, $text2, $text3, $text4, $text5, $text6" >> timesheet.csv
    echo
    echo "Saved timesheet.csv"
fi




