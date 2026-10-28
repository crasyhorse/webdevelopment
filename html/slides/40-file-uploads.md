---
layout: pageBar
class: content-offset
---

# File uploads with multipart/form-data

<img src="/images/multipart-file-upload.svg" alt="Clicking Upload on a form with a file input sends a POST request. Its multipart/form-data body contains a file part with Content-Disposition, filename, Content-Type and binary contents separated by boundaries." class="w-full mx-auto block" style="max-height: 45vh; object-fit: contain;" />

<!--
- The file upload control is `<input type="file">`.
- Its `name` attribute determines the submitted field name, here `avatar`.
- File upload forms typically use method=post and enctype=multipart/form-data.
- The browser creates a multipart request body and sets Content-Type: multipart/form-data with a boundary parameter.
- The boundary separates parts in the body. 
- The example has one file part; additional form controls would have their own parts.
- The file contents are transferred as bytes, not as a URL-encoded text value.
-->
