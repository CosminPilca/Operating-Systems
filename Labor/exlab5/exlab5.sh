#1
awk -F':' '{ print $1, $3, $6 }' users.txt

#2

awk 'BEGIN{FS=","}{print $1,"FNR="FNR,"NR="NR}END{print "Insgesamt",NR,"verarbeitete Zeilen"}' datei.txt datei.txt datei.txt
# FNR - se resteaza dupa fiecare iteratie a fisierului, pe cand NR itereaza in continuare

#3

awk 'NR <= 10 {print $1, $2}' users.txt


#4

awk '{ for(i=1; i<=NF; i++) sum+=$i } END { print sum }' summe.txt

#5
awk -F: '/^[AEIOUaeiou]/ {print $6}' /etc/passwd

#6
awk -F: '$3 % 2 == 0 {print $5}' /etc/passwd

#7
awk -F: 'length($5) > 20 {print $1}' /etc/passwd

#8 ---> in alt document

#9 ---> alt document

#10 ---> -""-

#11 
awk 'BEGIN { for(i = 1; i <= 5; i++) print "Square of", i, "is", i*i }'

#12

awk 'BEGIN { FS=":"; OFS="-" } { $1=$1; print }' phone.txt




