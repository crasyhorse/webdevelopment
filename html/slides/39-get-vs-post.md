---
layout: pageBar
class: content-offset
---

<script setup lang="ts">
import getPostData from '../data/get-post-matching.json'
</script>

# GET vs. POST — Match the statements

<Matching :data="getPostData" />

<!--
- Ask attendees to connect each GET or POST attribute with its typical purpose in HTML form submission.
- Select an item on the left, then its corresponding description on the right.
- Correct matches turn green, move into the same row, and become unavailable for further selection.
- Incorrect matches turn red briefly so attendees can try again.
- A completed set remains visible; use Reset to start again.
- These statements describe conventional HTTP/HTML form usage, not absolute technical restrictions of either method.
- GET should be safe and is intended for retrieving information; creating or changing server state normally uses POST.
- GET form values normally appear in the URL query string; POST form values are usually sent in the request body.
- POST does not encrypt submitted data. HTTPS protects data in transit with either HTTP method.
-->
