#!/bin/bash

helpFunction() {
  echo ""
  echo "Usage: $0 -c category"
  echo -e "\t-c Category in LOWER CASE(!), e.g. \"communication\" or \"objectsAndTools\""
  exit 1
}

while getopts "c:" opt
do
  case "$opt" in
    c ) category="$OPTARG" ;;
    ? ) helpFunction ;;
  esac
done

if [ -z "$category" ]
then
   echo "No category provided";
   helpFunction
fi

filename="Names/$category.txt"

echo "Operating on file \"$filename\""

uppercaseCategory="$(echo $category | awk '{$1=toupper(substr($1,0,1))substr($1,2)}1')"
relative_target_file_path="../../Sources/SFSymbols/SFSymbol+$uppercaseCategory.swift"

# Format and sort lines.
sed -i '' -e 's/\./_/g' $filename
sort -o $filename $filename

# Create Swift file.
rm -f $relative_target_file_path
touch $relative_target_file_path
cat <<EOT >> $relative_target_file_path
// Copyright © Rouven Strauss. MIT license.

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!! AUTO-GENERATED FILE. DO NOT EDIT MANUALLY. !!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import Foundation

public extension SFSymbol {
  static let ${category}Symbols: [SFSymbol] = [
EOT

while IFS= read -r line; do
   echo "    .sf_$line," >> $relative_target_file_path
done < $filename

cat <<EOT >> $relative_target_file_path
  ]
}
EOT
