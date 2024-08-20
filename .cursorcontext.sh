#!/bin/bash

# Customizable array of folders to include in the context
source_folders=("src" "test")

# Folders to ignore in the tree output (space-separated)
ignore_folders=(".git node_modules")

# Boolean to control whether to respect .gitignore (true/false)
respect_gitignore=true

# Define variables
project_root=${1:-.}
output_file="$project_root/docs/x.md"
cursorrules_file="$project_root/.cursorrules"
build_log_file="$project_root/Logs/build_output.log"
test_log_file="$project_root/Logs/test_output.log"
lint_log_file="$project_root/Logs/lint_output.log"
coverage_log_file="$project_root/Logs/coverage_output.log"
package_json_file="$project_root/package.json"

# Function to add section headers
add_section_header() {
  echo "## $1" >>"$output_file"
  echo >>"$output_file"
}

# Function to add file contents
add_file_contents() {
  if [ -f "$1" ]; then
    add_section_header "$2"
    echo "\`\`\`$3" >>"$output_file"
    cat "$1" >>"$output_file"
    echo '```' >>"$output_file"
    echo >>"$output_file"
  fi
}

# Function to process and add source files
process_source_files() {
  while read -r file; do
    # Create a relative path that's one level up (for docs folder)
    # This makes the links work correctly when viewed from the docs folder
    local relative_path="../${file#$project_root/}"
    local extension="${file##*.}"
    local filename="$(basename "$file")"
    echo "### 📄 FILE: [$filename]($relative_path)" >>"$output_file"
    echo >>"$output_file"
    echo "\`\`\`$extension" >>"$output_file"
    cat "$file" >>"$output_file"
    echo '```' >>"$output_file"
    echo >>"$output_file"
  done
}

# Clear the output file if it exists
>"$output_file"

# Add title
echo "# Project Context for AI Assistant" >>"$output_file"
echo >>"$output_file"

# Add disclaimer
echo "## 🚀 IMPORTANT CONTEXT FOR AI ASSISTANT" >>"$output_file"
echo >>"$output_file"
echo "This file contains all the files used in the project, as well as all relevant logs and cursor rules. This comprehensive context is provided to facilitate information exchange between the user and the AI assistant." >>"$output_file"
echo >>"$output_file"

# Add project structure tree
echo "## 📁 Project Structure" >>"$output_file"
echo >>"$output_file"
echo "\`\`\`plaintext" >>"$output_file"
if command -v tree &>/dev/null; then
  # Prepare ignore patterns
  ignore_patterns=""
  for folder in $ignore_folders; do
    ignore_patterns="$ignore_patterns -I $folder"
  done

  if [ "$respect_gitignore" = true ] && [ -f "$project_root/.gitignore" ]; then
    gitignore_patterns=$(grep -v '^#' "$project_root/.gitignore" | sed '/^\s*$/d' | tr '\n' '|')
    ignore_patterns="$ignore_patterns -I \"$gitignore_patterns\""
  fi

  # If tree command is available, use it with ignore patterns
  eval tree -a $ignore_patterns "$project_root" >>"$output_file"
else
  # If tree is not available, use find as a fallback
  find "$project_root" -not -path '*/\.*' | sed -e "s/[^-][^\/]*\// |/g" -e "s/|\([^ ]\)/|-\1/" >>"$output_file"
fi
echo '```' >>"$output_file"
echo >>"$output_file"

# Add debug information
add_section_header "🔍 DEBUG INFORMATION"
echo "- Project root: $project_root" >>"$output_file"
echo "- Output file: $output_file" >>"$output_file"
echo "- Cursor rules file: $cursorrules_file" >>"$output_file"
echo "- Build log file: $build_log_file" >>"$output_file"
echo "- Test log file: $test_log_file" >>"$output_file"
echo "- Lint log file: $lint_log_file" >>"$output_file"
echo "- Coverage log file: $coverage_log_file" >>"$output_file"
echo "- Package.json file: $package_json_file" >>"$output_file"
echo >>"$output_file"

# Add cursor rules
add_section_header "⚠️ ATTENTION! CRITICAL RULES - MUST BE FOLLOWED!"
echo "These rules are crucial for all interactions. Ignore them at your peril!" >>"$output_file"
echo >>"$output_file"
add_file_contents "$cursorrules_file" "🚨 CURSOR RULES - READ AND FOLLOW THESE!" "json"

# Add log files
add_file_contents "$build_log_file" "🏗️ BUILD OUTPUT LOG - REVIEW BUILD RESULTS!" "log"
add_file_contents "$test_log_file" "🧪 TEST OUTPUT LOG - REVIEW TEST RESULTS!" "log"
add_file_contents "$lint_log_file" "🔍 LINT OUTPUT LOG - CHECK FOR CODE STYLE ISSUES!" "log"
add_file_contents "$coverage_log_file" "📊 COVERAGE OUTPUT LOG - CHECK COVERAGE METRICS!" "log"

# Add package.json
add_file_contents "$package_json_file" "📦 PACKAGE.JSON - PROJECT CONFIGURATION!" "json"

# Add source and test files
add_section_header "🔍 SOURCE AND TEST FILES - REVIEW CODE!"
for folder in "${source_folders[@]}"; do
  if [ -d "$project_root/$folder" ]; then
    find "$project_root/$folder" -type f \( -name "*.js" -o -name "*.ts" -o -name "*.jsx" -o -name "*.tsx" -o -name "*.json" \) | process_source_files
  else
    echo "Warning: $folder directory not found in $project_root" >&2
  fi
done

echo "File contents have been written to $output_file"
