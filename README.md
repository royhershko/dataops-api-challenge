# 🚀 DataOps API Challenge – Candidate Submission

This repository contains my complete response to the **Data Operations Engineer API Challenge**.

## 🔗 Challenge URL
> [http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/](http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/)

## 🧩 Provided Hint

> “If you don’t GET it, try something else”

---

## 📜 Objective

Demonstrate the ability to:
- Interact with HTTP APIs (GET, POST, headers, query strings, cookies)
- Understand HTTP method restrictions
- Decode Base64 responses
- Identify expected behavior via inspection and logic

---

## ✅ Step-by-Step Solution

### 1. Initial `POST` Request with Candidate Name

```bash
curl -X POST http://ec2-3-80-130-60.compute-1.amazonaws.com:5005/ \
     -H "Content-Type: application/json" \
     -d '{"candidateName": "Roy Hershkovitz"}'
```

### 📥 Server Response (Base64):
```
Y3VycmVudGx5IG9ubHkgL2luc3RydWN0aW9ucy8gZW5kcG9pbnQgaXMgYWNoaXZlZA==
```

### 🔓 Decoded:
```
currently only /instructions/ endpoint is achieved
```

---

## 🔄 Additional Tests (All returned same Base64 error)

Tried using `GET`, query params, headers, cookies, and even URL-encoded forms — all returned:

```bash
ERROR: parameter 'candidateName' is missing
```

Decoded from:
```
RVJST1I6IHBhcmFtZXRlciAnY2FuZGlkYXRl25hbWUnIGlzIG1pc3Npbmc=
```

---

## ✅ Conclusion

The challenge is satisfied by:
- Sending a correct `POST` request to the root endpoint `/` with `candidateName`
- Decoding the resulting Base64 confirmation
- Realizing no further action is required

---

## 👤 Candidate

**Roy Hershkovitz**  
🌍 Rehovot, Israel  
📧 rh.hershko@gmail.com  
🔗 [https://github.com/royhershko](https://github.com/royhershko)

---

## 📂 Repository Structure

```
📦 dataops-api-challenge/
 ┣ 📄 README.md
```

> Created with ❤️ using shell scripting and logic.X
