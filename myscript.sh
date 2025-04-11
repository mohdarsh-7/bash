#!/bin/bash
exec 3>test
exec 1>&3
echo " my name is anthony"
exec 3>&1
echo " integral university"

