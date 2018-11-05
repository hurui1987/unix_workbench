#!/bin/bash
function judge {
  local fCount=$(ls -l | grep "^-" | wc -l)
  if [[ $1 -lt $fCount ]]
  then
    echo -1
  elif [[ $1 -gt $fCount ]]
  then
    echo 1
  else
    echo 0
  fi
}
echo "welcome to the game: guess how many files in current directory?"
ret=1
while [[ $ret -ne 0 ]]
do
  read -p "please input your answer: " answer
  ret=$(judge $answer)
  if [[ $ret -lt 0 ]]
  then
    echo "low"
  elif [[ $ret -gt 0 ]]
  then 
    echo "high"
  else
    echo "Congratulations"
  fi
done
