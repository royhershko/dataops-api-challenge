# API Challenge Repo with Tests

Now includes bash test suite in `tests/`.


---

## 🧪 Tests

All automated tests are located under the `tests/` directory. The test suite uses basic `curl` commands and shell scripting.

### Included Test Scenarios

| Test Name              | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `test_get_root_405`    | Validates that a GET request to `/` returns a `405 Method Not Allowed`.     |
| `test_post_name`       | Sends your candidate name via POST and expects a base64 token in response. |
| `test_cookie_access`   | Sends a GET request to `/instructions` using the token as a cookie.         |

To run the tests:

```bash
bash tests/test_api_challenge.sh
```

Make sure `curl` is installed and that you're connected to the internet.

