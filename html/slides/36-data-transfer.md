---
layout: pageBar
class: content-offset
---

# Data transfer

<img src="/images/form-data-transfer.svg" alt="Clicking Add task in a populated HTML form produces named form entries. A POST request sends the encoded form values in its request body to a server." class="w-full mx-auto block" style="max-height: 45vh; object-fit: contain;" />

<!--
- Clicking the submit button triggers the browser's native form submission process.
- The browser collects the names and values of form controls. In the illustration, these are task, priority and dueDate.
- The FormData box is a conceptual representation of those name/value entries, not a literal JavaScript FormData object sent over the wire.
- With method=post, the browser normally encodes the entries in the request body, using application/x-www-form-urlencoded by default.
- The POST request travels to the endpoint specified by action, where a server can process the submitted values.
- The form alone does not create a task: the server must provide an endpoint for the request.
-->
