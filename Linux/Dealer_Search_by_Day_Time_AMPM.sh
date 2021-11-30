#!/bin/bash
echo "Dealer working when a loss occurred on" $1 $2 $3 ":" >> Dealers_working_during_losses
grep $2 $1_Dealer_schedule | grep $3 | awk '{print $5, $6}' >> Dealers_working_during_losses

