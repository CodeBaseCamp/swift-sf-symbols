#!/bin/bash

categories=(
  accessibility
  all
  arrows
  automotive
  cameraAndPhotos
  commerce
  communication
  connectivity
  devices
  editing
  fitness
  gaming
  health
  home
  human
  indices
  keyboard
  maths
  media
  multicolour
  nature
  objectsAndTools
  privacyAndSecurity
  shapes
  textFormatting
  time
  transport
  variable
  weather
)

cd Auxiliary

# Create `SFSymbol.swift` file.

./create_sf_symbol_file.sh

# Create `SFSymbol+<X>.swift` extension files.

for i in "${categories[@]}"; do 
  ./create_sf_symbol_extension_file.sh -c $i
done

# Create `SFSymbol+Category.swift` file.

cd ../

relative_target_file_path="../Sources/SFSymbols/SFSymbol+Category.swift"

rm -f $relative_target_file_path
touch $relative_target_file_path
cat <<EOT >> $relative_target_file_path
// Copyright © Rouven Strauss. MIT license.

// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
// !!! AUTO-GENERATED FILE. DO NOT EDIT MANUALLY. !!!
// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

import Foundation

public extension SFSymbol {
  enum Category: String, CaseIterable, Hashable, Sendable {
EOT

for i in "${categories[@]}"; do 
  echo "    case $i" >> $relative_target_file_path
done

cat <<EOT >> $relative_target_file_path
  }

  static let categories: [Category] = Category.allCases
}

public extension SFSymbol.Category {
  var symbols: [SFSymbol] {
    switch self {
EOT

for i in "${categories[@]}"; do 
  echo "    case .$i:" >> $relative_target_file_path
  echo "      return SFSymbol.${i}Symbols" >> $relative_target_file_path
done

cat <<EOT >> $relative_target_file_path
    }
  }
}
EOT
