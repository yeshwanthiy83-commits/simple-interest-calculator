#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "--------------------------"

echo -n "Enter Principal amount: "
read principal

echo -n "Enter Rate of Interest (% per year): "
read rate

echo -n "Enter Time (in years): "
read time

# Calculate Simple Interest using awk for decimal calculation
interest=$(awk "BEGIN {print ($principal * $rate * $time) / 100}")

# Calculate Total Amount
total=$(awk "BEGIN {print $principal + $interest}")

echo "--------------------------"
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
