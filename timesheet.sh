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
echo -e "\n\nJob Description:"
read text
echo
echo "$strt, $text, $dif, $hs:$ms:$ss"
echo "$strt, $text, $dif, $hs:$ms:$ss" >> timesheet.csv
echo
echo "Saved timesheet.csv"
