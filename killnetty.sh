#!/usr/bin/env bash

#########################################
#
#    killnetty.sh
#    Kills a netty instance 
#    by getting the PID from the port its listening to.
#
#    Re: http://stackoverflow.com/a/5043907
#
#    Breakdown of command:
#
#    (lsof -i tcp:${PORT_NUMBER}) -- list all processes that is listening on
#    that tcp port
#    
#    (awk 'NR!=1 {print $2}') -- ignore first line, print second column of each 
#    line
#
#    (xargs kill) -- pass on the results as an argument to kill. There may be 
#    several.
#
#########################################


#the netty instance opened by spark runs on port 4567 by default
PORT_NUMBER=4567
lsof -i tcp:${PORT_NUMBER} | awk 'NR!=1 {print $2}' | xargs kill 
