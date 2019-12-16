# Runs zsnes.
# Since zsnes doesn't like having esd run at the same time, we have to run
#  kill esd. But we want it back up and running again so that we can play
#  music and stuff.

killall esd
zsnes
esd -nobeeps &
