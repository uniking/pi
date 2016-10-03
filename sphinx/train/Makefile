all:
	text2wfreq < my_db.txt | wfreq2vocab > my_db.vocab
	text2idngram -vocab my_db.vocab -idngram my_db.idngram < my_db.txt
	idngram2lm -vocab my_db.vocab -idngram my_db.idngram -arpa my_db.arpa
	sphinx_lm_convert -i my_db.arpa -o my_db.lm.DMP
clean:
	rm -f my_db.vocab my_db.idngram my_db.arpa my_db.lm.DMP
