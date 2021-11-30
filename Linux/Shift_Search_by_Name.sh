#!/bin/bash
grep "$1 $2" 0310_Dealer_schedule | awk '{print "0310" " " $1, $2}'
grep "$1 $2" 0312_Dealer_schedule | awk '{print "0312" " " $1, $2}'
grep "$1 $2" 0315_Dealer_schedule | awk '{print "0315" " " $1, $2}'
