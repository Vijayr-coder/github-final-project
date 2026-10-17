#!/bin/bash

# Simple Interest Calculator Script in Bash
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "-----------------------------------"
echo "    Simple Interest Calculator     "
echo "-----------------------------------"

# Prompt user for input
read -p "Enter Principal Amount (P): " principal
read -p "Enter Annual Interest Rate (R in %): " rate
read -p "Enter Time Period in Years (T): " time

# Calculate Simple Interest using bc for decimal/floating-point operations
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total_amount=$(echo "scale=2; $principal + $interest" | bc)

echo "-----------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount Payable: $total_amount"
echo "-----------------------------------"
