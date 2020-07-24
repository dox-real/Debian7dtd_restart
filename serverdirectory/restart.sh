# MATT READ THIS
#
#                   You can keep the scripts running after the restart
#               Put all expect scripts in a while loop
#              While 7DaysToDieServer is running then run main code
#                 If not then sleep 500 and try to connect again

#This shell file kills currently running server, waits 1 minute then restarts it.
#for {set x 0} {$x<999999} {incr x} {
while :
do
if pgrep 7DaysToDie;
then
echo "Hi"
/home/steam/Steam/7days03/restart_broadcasts.expect
#gimpy restart counter
echo "120" > ./Modules/tracker/restartresolver1.txt
sleep 5
pkill -f 7DaysToDieServer
sleep 25
#/home/steam/Steam/7days03/7DaysToDieServer.x86_64 -logfile 7DaysToDieServer_Data/output_log__`date +%Y-%m-%d__%H-%M-%S`.txt -configfile=/home/steam/Steam/7days03/serverconfig.xml -quit -batchmode -nographics -dedicated $PARAMS
#( sleep 25 & /home/steam/Steam/7days05/7DaysToDieServer.x86_64 -logfile 7DaysToDieServer_Data/output_log__`date +%Y-%m-%d__%H-%M-%S`.txt -configfile=/home/steam/Steam/7days05/serverconfig.xml -quit -batchmode -nographics -dedicated $PARAMS)
#This sleep will match the expect function loop.
else
( sleep 10 & /home/steam/Steam/7days03/7DaysToDieServer.x86_64 -logfile 7DaysToDieServer_Data/output_log__`date +%Y-%m-%d__%H-%M-%S`.txt -configfile=/home/steam/Steam/7days03/serverconfig.xml -quit -batchmode -nographics -dedicated $PARAMS)
echo "Past Point"
#id=pgrep -f 7DaysToDieServer
#kill $id
sleep 60

fi

#/home/steam/Steam/7days05/startserver.sh -configfile=serverconfig.xml
sleep 150
done
