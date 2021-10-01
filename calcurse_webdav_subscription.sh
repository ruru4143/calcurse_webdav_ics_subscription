#!/bin/bash

# input vars
id=$1
ics_url=$2

# vars you might customise
tmp_ics="/tmp/calcurse_$id.ics"
data_dir="$HOME/.calcurse"
calendar_file="$data_dir/apts"

# remove entries with id in it
grep -v "$id" "$calendar_file" >| "$calendar_file.tmp"
mv "$calendar_file.tmp" "$calendar_file"

# import entries
wget "$ics_url" --output-document=$tmp_ics
sed -E "s/SUMMARY([^\r]*)/SUMMARY\1 $id/g" -i $tmp_ics
calcurse -i $tmp_ics

