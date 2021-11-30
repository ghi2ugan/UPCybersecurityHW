
#!/bin/bash
if [ $4 == 'Roulette' ] || [ $4 == 'roulette' ]; then
echo "Roulette dealer working on" $3 $1 $2 ":"
grep -i $2 $3_Dealer_schedule | grep $1 | awk '{print $5, $6}'
elif [ $4 == 'Blackjack' ] || [ $4 == 'blackjack' ]; then
echo "Blackjack dealer working on" $3 $1 $2 ":"
grep -i $2 $3_Dealer_schedule | grep $1 | awk '{print $3, $4}'
elif [ $4 == 'Texas' ] || [ $4 == 'texas' ] || [ $4 == 'Texas Hold EM' ] || [ $4 == 'Texas Hold Em' ] || [ $4 == 'texas hold em' ] ; then
echo "Texas Hold EM dealer working on" $3 $1 $2 ":"
grep -i $2 $3_Dealer_schedule | grep $1 | awk '{print $7, $8}'
fi
