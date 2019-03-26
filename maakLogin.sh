#!/usr/bin/env bash

#checkt of gegevens.txt bestaat. Zo ja removed ie 'm en maakt hij weer een lege gegevens.txt aan.
if [ -f gegevens.txt ];then
    rm gegevens.txt
fi

touch gegevens.txt

maakLoginpasswordfile(){
    #username wordt weggeschreven in file
    echo $1 >> gegevens.txt
    #Pw word ge-encrypt en geformat
    encryptedPw=$(echo -n $2 | md5sum);
    encryptedPw=${encryptedPW//" -"}
    #Pw wordt weggeschreven in file
    echo $encryptedPw >> gegevens.txt
}

#vraagt input en stored in var username
read -p "Enter new username: " username
#checkt of input leeg is. Zo ja wordt username 'whoami'
if ((${#username}==0));then
    username=whoami
fi

#oneindige loop
while :;do
    #vraagt input en stored in var password
    read -s -p "Enter new password: " password
    #checkt of pw langer is dan 8 characters
    if ((${#password}>7)); then
        #roept funcite aan die file maakt en pw hasht
        maakLoginpasswordfile $username $password
        #breakt uit loop
        break
    else
        #geeft feedback wanneer pw niet aan eisen voldoet
        echo "Password moet minimaal 8 tekens bevatten"
    fi
done

