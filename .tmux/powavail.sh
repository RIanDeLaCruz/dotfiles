#!/bin/bash

HEART='♥'

  battery_info=`ioreg -rc AppleSmartBattery`
  current_charge=$(echo $battery_info | grep -o '"CurrentCapacity" = [0-9]\+' | awk '{print $3}')
  total_charge=$(echo $battery_info | grep -o '"MaxCapacity" = [0-9]\+' | awk '{print $3}')
  val=$current_charge/$total_charge
  charged_slots=$(echo "(($current_charge/$total_charge)*100)+1" | bc -l | cut -d '.' -f 1)
  echo $charged_slots
