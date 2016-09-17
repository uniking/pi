n=`ps aux|grep 'natapp' | wc -l`
en='2'
echo $n

if test $n == $en
then
	echo 'exit'
else
	echo 'not exit'
	nohup /home/pi/app/natapp -authtoken=2d5a1dedd124338f > /dev/null &
fi

