#!/bin/bash

# List of input files to process
input_files=("addi-01.S" "addiw-01.S" "andi-01.S" "ori-01.S" "xori-01.S" "slli-01.S" "slliw-01.S" "srli-01.S" "srliw-01.S" "srai-01.S" "sraiw-01.S" "slti-01.S" "sltiu-01.S")  # Add your files here

# Ensure all files are writable
for input_file in "${input_files[@]}"; do
  if ! [ -w "$input_file" ]; then
    echo "Error: The file '$input_file' is not writable."
    exit 1
  fi
done

# Initialize the value for the 5th argument (immval) to be in the range 0 to 31
counter=1

# Loop through each file and apply the changes
for input_file in "${input_files[@]}"; do
  awk -v counter="$counter" '{
    # Match lines that contain TEST_CI_OP and ensure there are at least 8 arguments
    if ($0 ~ /TEST_IMM_OP/ && NF >= 5) {
      # Split the line by commas
      n = split($0, arr, /,/)
      
      # Update the 2nd argument (x10) to x0
      arr[2] = "x0"
      
      
      
      # Reconstruct the line from the modified array
      $0 = join(arr, ",")
    }
    print
  }
  # Function to join array elements into a string
  function join(arr, sep) {
    str = arr[1]
    for (i = 2; i in arr; i++) {
      str = str sep arr[i]
    }
    return str
  }' "$input_file" > tmp_file && mv tmp_file "$input_file"
  
  echo "File '$input_file' updated."
done

echo "Substitution complete for all files."
