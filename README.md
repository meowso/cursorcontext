# Cursor AI Context Generator

This repository serves as a reference for setting up a context generation system for the Cursor AI IDE. It demonstrates how to create a comprehensive output file containing your project's context, enabling faster iterations and a better experience with Cursor AI.

## Overview

The main components of this setup are:

1. `docs/share_files.sh`: A bash script that generates the context file
2. `.cursorrules`: A configuration file for custom rules and patterns
3. `package.json`: Contains npm scripts for easy execution

## How It Works

The `share_files.sh` script:

1. Creates a single output file (`x.md`) in the `docs` directory
2. Includes the contents of `.cursorrules` at the top of the file
3. Adds the contents of all relevant project files
4. Optionally includes logs (test, lint, coverage) if they exist

The generated `x.md` file can then be used to provide comprehensive context to Cursor AI IDE.

## Customization

- Modify `share_files.sh` to include or exclude specific directories or file types
- Adjust `.cursorrules` to add custom rules and patterns for your project
- Update `package.json` scripts as needed for your workflow

## Usage

To use this setup in your own project:

1. Copy `docs/share_files.sh`, `.cursorrules`, and the relevant `package.json` scripts to your project
2. Customize the files as needed
3. Run the context generation script using:

   ```bash
   npm run share-files
   ```

4. Use the generated `x.md` file with Cursor AI IDE

## Note

This is a reference implementation and may need adjustments to work with your specific project structure and needs. It's provided as-is, without any guarantees, and is free to use and modify.

## Author

Bruno Palma

## License

[MIT License](LICENSE)
