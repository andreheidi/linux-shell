#!/bin/bash

printf '%s\n' 'Memory before executing the command'

free -m

sync; echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'

printf '\n%s\n' 'Memory after executing the command'

free -m
