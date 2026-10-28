---
layout: pageBar
class: content-offset
---

# Excursion — MIME Types

A **MIME type** identifies the format of data being transferred.

- Sent in the HTTP `Content-Type` header.
- Uses the format `type/subtype`.
- Tells the receiver how to interpret the data.

Examples: `text/html`, `application/json`, `image/png`

**Default encoding for HTML form submission:**

```http
Content-Type: application/x-www-form-urlencoded

task=Review+semantic+HTML&priority=high
```

- Form fields become `name=value` pairs separated by `&`.
- Spaces become `+`; special characters are percent-encoded.

<!--
- MIME stands for Multipurpose Internet Mail Extensions. 
- MIME types originated in email but are also used in HTTP.
- A MIME type, also called a media type, describes the format of transferred data.
- The general format is type/subtype.
-->
