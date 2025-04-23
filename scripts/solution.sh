#!/bin/bash

# API base URL
API_URL="http://ec2-3-80-130-60.compute-1.amazonaws.com:5005"

# Candidate info
CANDIDATE_NAME="Roy Hershkovitz"

echo "🔹 Submitting candidate name..."
RESPONSE=$(curl -s -X POST "$API_URL/" \
  -H "Content-Type: application/json" \
  -d "{\"candidateName\": \"$CANDIDATE_NAME\"}")

echo "✅ Token received:"
echo "$RESPONSE"

# Extract token (assuming it's base64 token after '=')
TOKEN=$(echo "$RESPONSE" | grep -o '[A-Za-z0-9]\{10,\}')

echo -e "\n🔹 Using token to request instructions..."
INSTRUCTIONS=$(curl -s -H "Cookie: candidateName=$CANDIDATE_NAME" "$API_URL/instructions")

echo "📄 Instructions:"
echo "$INSTRUCTIONS"

# Optional: Save instructions to file
echo "$INSTRUCTIONS" > instructions.txt

# Cleanup (if needed)
echo -e "\n🧹 Cleaning temp files..."
rm -f README.md.md* 2>/dev/null

echo -e "\n✅ Done."
