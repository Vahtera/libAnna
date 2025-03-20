#!/bin/sh

# Get the commit count
COMMIT_COUNT=$(git rev-list --count --all)

# Define the output file
OUTPUT_FILE="gitVersion.js"

# Generate the C# file
cat <<EOL > $OUTPUT_FILE
export const GIT_VERSION = $COMMIT_COUNT
EOL

echo "Updated $OUTPUT_FILE with commit count: $COMMIT_COUNT"
git add $OUTPUT_FILE