
# Summary – DataOps API Challenge

## Challenge Objective
This task was designed to evaluate API analysis skills, reverse-engineering behavior based on server responses, and adapting to unexpected formats – without relying on formal API documentation.

## My Process
- Used `curl` and `bash` to interact with the server.
- Sent both POST and GET requests to explore endpoint behavior.
- Decoded Base64 error messages to understand hidden server responses.
- Developed reusable solution and test scripts (`solution.sh`, `tests/`).

## Insight from the Hint
The provided hint, **“If you don’t GET it, try something else”**, was key.  
It encouraged me to switch from `GET` to `POST`, which ultimately revealed the expected response.

## Key Findings
- The challenge endpoint `/` only accepts a `POST` request with `candidateName`.
- Any incorrect request returns an encoded error message.
- Upon decoding, the message confirmed that no further action was needed.

## Conclusion
This challenge was an excellent practical exercise in:
- Navigating undocumented APIs
- Applying logical analysis
- Writing clean, scriptable solutions

It reflects core skills expected of a DataOps or DevOps Engineer working with production systems.
