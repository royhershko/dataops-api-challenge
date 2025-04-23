
#!/bin/bash

echo "✅ Running API Challenge Tests..."

# Test 1: Basic GET (expected 405 Method Not Allowed)
echo -n "Test 1 - GET / => "
curl -s -o /dev/null -w "%{http_code}" http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/ | grep -q "405" && echo "PASSED" || echo "FAILED"

# Test 2: Valid POST with name
echo -n "Test 2 - POST name => "
curl -s -X POST http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/ \
    -H "Content-Type: application/x-www-form-urlencoded" \
    -d "candidateName=Roy Hershkovitz" | grep -q "RVJ" && echo "PASSED" || echo "FAILED"

# Test 3: Reuse token in GET with Cookie header
echo -n "Test 3 - GET /instructions with Cookie => "
curl -s -H "Cookie: candidateName=Roy Hershkovitz" \
    http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/instructions | grep -q "curl" && echo "PASSED" || echo "FAILED"
