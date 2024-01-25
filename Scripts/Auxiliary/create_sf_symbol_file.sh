#!/bin/bash

relative_data_file_path="Names/all.txt"
relative_target_file_path="../../Sources/SFSymbols/SFSymbol.swift"

# Format and sort lines.
sed -i '' -e 's/\./_/g' $relative_data_file_path
sort -o $relative_data_file_path $relative_data_file_path

# Create Swift file.
rm -f $relative_target_file_path
touch $relative_target_file_path
cat <<EOT >> $relative_target_file_path
// Copyright © Rouven Strauss. MIT license.

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!! AUTO-GENERATED FILE. DO NOT EDIT MANUALLY. !!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import Foundation

public enum SFSymbol: String, CaseIterable, Codable, Sendable {
EOT

while IFS= read -r line; do
   echo "  case sf_$line" >> $relative_target_file_path
done < $relative_data_file_path

cat <<EOT >> $relative_target_file_path
}
EOT
