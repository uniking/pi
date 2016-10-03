ekho -s -25  "系统初始化"
sleep 5
ekho -s -25 "系统初始化成功"

path='/tmp/wzl/tmp.wav'
path_txt='/tmp/wzl/tmp.txt'
var=2
	arecord -D "plughw:1,0" -f S16_LE -r 16000  -d 5 $path
	pocketsphinx_continuous -hmm /home/pi/git/tutorial/an4/model_parameters/an4.cd_semi_1000 -dict /home/pi/git/tutorial/an4/etc/my_db.dic -lm /home/pi/git/tutorial/my_db.bk/mk_etc_wav/my_db.lm.DMP -infile $path >$path_txt

	sleep 2
	ekho -s -25 -f $path_txt

sleep 5
ekho -s -25 "退出系统"
