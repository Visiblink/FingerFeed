#!/bin/bash


addresses="
user1@server.org
user2@server2.net
user3@server3.com
"


separator () {
echo >> readerfile.tmp
echo "===================================================================" >> readerfile.tmp
echo >> readerfile.tmp
}


echo "===================================================================" > readerfile.tmp
echo "                            FingerFeed" >> readerfile.tmp
echo "===================================================================" >> readerfile.tmp
echo >> readerfile.tmp


for address in $addresses 
do
  finger $address >> readerfile.tmp
  separator
done


less readerfile.tmp

rm readerfile.tmp
