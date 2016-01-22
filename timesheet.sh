#!/bin/bash
strt=$(date)
inisecs=$(date +%s)
echo
echo "Time started at $strt"
echo
echo "Time elapsed: (press q to quit)"
while true; do
act=$(date +%s)
dif=$(( $act - $inisecs ))
hs=$(( $dif / 3600 ))
ms=$(( $dif / 60 - $hs * 60 ))
ss=$(( $dif - $ms * 60 - $hs * 3600 ))
echo -en "\r$hs:$ms:$ss            "
read -t 1 -n 1 key
if [[ "$key" = "q" ]]; then
    break
fi
done
echo -e "\n\nClient(enter c) or Training/other(enter t)"
read text
if [[ "$text" = "t" ]]; then
    echo -e "\n\nJob Description:"
    read text
    echo
    echo "$strt, $dif, $hs:$ms:$ss, $text"
    echo "$strt, $dif, $hs:$ms:$ss, $text" >> timesheet.csv
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
    echo "$strt, $dif, $hs:$ms:$ss, $text1, $text2, $text3, $text4, $text5, $text6"
    echo "$strt, $dif, $hs:$ms:$ss, $text1, $text2, $text3, $text4, $text5, $text6" >> timesheet.csv
    echo
    echo "Saved timesheet.csv"
fi






