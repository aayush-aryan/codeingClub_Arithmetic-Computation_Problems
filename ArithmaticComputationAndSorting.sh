#!/bin/bash -x

echo "---- Welcome to Arithmetic Compution And Sorting ----"
read -p "Enter first input :" firstInput
read -p "Enter second input:" secondInput
read -p "Enter third input :" thirdInput

declare -A arithmaticOperation

result=`echo "scale=2;$firstInput + $secondInput * $thirdInput" | bc`
echo "Result:" $result

resultOne=`echo "scale=2;$firstInput * $secondInput + $thirdInput" | bc`
echo "Result:" $resultOne

resultTwo=`echo "scale=2;$thirdInput + $firstInput / $secondInput " | bc`
echo "Result:" $resultTwo

resultThree=`echo "scale=2;$firstInput % $secondInput + $thirdInput" | bc`
echo "Result:" $resultThree

#To store value in the DICTIONARY
arithmaticOperation[result]=$result
arithmaticOperation[resultOne]=$resultOne
arithmaticOperation[resultTwo]=$resultTwo
arithmaticOperation[resultThree]=$resultThree

#reading the value from dictionary into the array
for((index=0; index<=${#arithmaticOperation[@]}; index++))
do
  array[index]=${arithmaticOperation[result$((index+1))]}
done

echo "${array[@]}"
