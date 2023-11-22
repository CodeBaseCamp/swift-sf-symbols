# Type-safe SF Symbols

## Update Instructions

For updating the package with new SF symbols, perform the following steps: 

- Open the SF Symbols app, [provided by Apple](https://developer.apple.com/sf-symbols).
- Open the relevant tab, e.g. "Accessibility", select all symbols (CMD+A), right-click and select 
  "Copy x Names".  
- Paste the copied names to the relevant file in `./Scripts/Auxiliary/Names`. Don't worry about 
  sorting or replacing the periods with underscores, the script you will run in a moment takes care 
  of this.
- In the terminal, navigate to the `Scripts` directory and run `./create_files.sh`.
